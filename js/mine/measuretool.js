ol.control.MeasureTool = function(opt_options) {

  var options = opt_options || {};


  this.sphereradius = options.sphereradius ?
    options.sphereradius : 6378137;

  this.mapListeners = [];

  this.hiddenClassName = 'ol-control MeasureTool';
  if (ol.control.MeasureTool.isTouchDevice_()) {
      this.hiddenClassName += ' touch';
  }
  this.shownClassName = this.hiddenClassName + ' shown';

  var element = document.createElement('div');
  element.className = this.hiddenClassName;

  this.panel = document.createElement('ul');
  element.appendChild(this.panel);

  var ulheader = document.createElement('li');
  this.panel.appendChild(ulheader);

  var inputMeasure = document.createElement('input');
  inputMeasure.type = "button";
  ulheader.appendChild(inputMeasure);
  var this_ = this;
  inputMeasure.onclick = function(e) {//开始测量
    this_.mapmeasure();
  };
  this.source = new ol.source.Vector();
  this.vector = new ol.layer.Vector({
    title:"测距",
    source: this.source,
    style: new ol.style.Style({//测距完成后线段样式
      stroke: new ol.style.Stroke({
        color: '#ffcc33',
        width: 3
      })
    })
  });

  this_.panel.onmouseout = function(e) {
      e = e || window.event;
      if (!this_.panel.contains(e.toElement || e.relatedTarget)) {
          this_.hidePanel();
      }
  };

  ol.control.Control.call(this, {
      element: element,
  });

};

ol.inherits(ol.control.MeasureTool, ol.control.Control);

/**
 * Set the map instance the control is associated with.
 * @param {ol.Map} map The map instance.
 */
ol.control.MeasureTool.prototype.setMap = function(map) {
    // Clean up listeners associated with the previous map
    for (var i = 0, key; i < this.mapListeners.length; i++) {
        this.getMap().unByKey(this.mapListeners[i]);
    }
    this.mapListeners.length = 0;
    // Wire up listeners etc. and store reference to new map
    ol.control.Control.prototype.setMap.call(this, map);
    if (map) {
        var this_ = this;
        this.mapListeners.push(map.on('pointerdown', function() {
            this_.hidePanel();
        }));
    }
};

ol.control.MeasureTool.prototype.mapmeasure = function() {
  var source = this.source;
  var vector = this.vector;
  var wgs84Sphere = new ol.Sphere(this.sphereradius);
  var containsVector=false;
  var sketch;
  var helpTooltipElement;
  var measureTooltipElement;
  var measureTooltip;
  var currentFeature;

  var map = this.getMap();
  


  map.removeLayer(vector);
  map.addLayer(vector);
  map.getViewport().addEventListener('mouseout', function() {
    helpTooltipElement.classList.add('hidden');
  });

  var draw; // global so we can remove it later

  var formatLength = function(line) {
    var length;
    var coordinates = line.getCoordinates();
    length = 0;
    var sourceProj = map.getView().getProjection();
    for (var i = 0, ii = coordinates.length - 1; i < ii; ++i) {
      var c1 = ol.proj.transform(coordinates[i], sourceProj, 'EPSG:4326');
      var c2 = ol.proj.transform(coordinates[i + 1], sourceProj, 'EPSG:4326');
      length += wgs84Sphere.haversineDistance(c1, c2);
    }
    var output;
    if (length > 100) {
      output = (Math.round(length / 1000 * 100) / 100) +
          ' ' + 'km';
    } else {
      output = (Math.round(length * 100) / 100) +
          ' ' + 'm';
    }
    return output;
  };

  //删除线段按钮
  var popupcloser = document.createElement('a');
  popupcloser.href = 'javascript:void(0);';
  popupcloser.classList.add('ol-popup-closer');

  function addInteraction() {
    draw = new ol.interaction.Draw({
      source: source,
      type: /** @type {ol.geom.GeometryType} */"LineString",
      style: new ol.style.Style({//绘制过程中样式设定
        fill: new ol.style.Fill({
          color: 'rgba(255, 255, 255, 0.2)'
        }),
        stroke: new ol.style.Stroke({
          color: 'rgba(0, 0, 0, 0.5)',
          lineDash: [10, 10],
          width: 2
        }),
        image: new ol.style.Circle({
          radius: 7,
          stroke: new ol.style.Stroke({
            color: 'rgba(0, 0, 0, 0.7)',
            width: 1.5
          }),
          fill: new ol.style.Fill({
            color: 'rgba(255, 255, 255, 0.2)'
          })
        })
      })
    });
    map.addInteraction(draw);

    createMeasureTooltip();
    createHelpTooltip();

    var listener;
    var count = 0;
    draw.on('drawstart',
      function(evt) {
        sketch = evt.feature;
        var tooltipCoord = evt.coordinate;
        listener = sketch.getGeometry().on('change', function(evt) {
          try {
            var geom = evt.target;
            var output;

            if (geom instanceof ol.geom.LineString) {
              output = formatLength(geom);
              tooltipCoord = geom.getLastCoordinate();
            }
            measureTooltipElement.innerHTML = output;
            measureTooltip.setPosition(tooltipCoord);
          } catch (e) {
            map.removeInteraction(draw);
          } finally {
          }

        });
      }, this);

    draw.on('drawend',
        function(e) {
          measureTooltipElement.appendChild(popupcloser);
          measureTooltipElement.className = 'tooltip tooltip-static';
          currentFeature = e.feature;
          measureTooltip.setOffset([0, -7]);
          sketch = null;
          measureTooltipElement = null;
          createMeasureTooltip();
          ol.Observable.unByKey(listener);
          map.removeInteraction(draw);
        }, this);
  }

  /**
   * 测量帮助信息
   */
  function createHelpTooltip() {
    if (helpTooltipElement) {
      helpTooltipElement.parentNode.removeChild(helpTooltipElement);
    }
    helpTooltipElement = document.createElement('div');
    helpTooltipElement.className = 'tooltip hidden';
  }

  /**
   * 测量提示信息
   */
  function createMeasureTooltip() {
    if (measureTooltipElement) {
      measureTooltipElement.parentNode.removeChild(measureTooltipElement);
    }
    measureTooltipElement = document.createElement('div');
    measureTooltipElement.className = 'tooltip tooltip-measure';
    measureTooltip = new ol.Overlay({
      element: measureTooltipElement,
      offset: [0, -15],
      positioning: 'bottom-center'
    });
    map.addOverlay(measureTooltip);
  }

  //清除标注及线段
  popupcloser.onclick = function(e) {
    // map.getOverlays().clear();//全部清空
    // vector.getSource().clear();
    vector.getSource().removeFeature(currentFeature);
    $(e.currentTarget.offsetParent.offsetParent).remove();
  };

  addInteraction();
};

/**
 * Show the MeasureTool.
 */
ol.control.MeasureTool.prototype.showPanel = function() {
    if (this.element.className != this.shownClassName) {
        this.element.className = this.shownClassName;
    }
};

/**
 * Hide the MeasureTool.
 */
ol.control.MeasureTool.prototype.hidePanel = function() {
    if (this.element.className != this.hiddenClassName) {
        this.element.className = this.hiddenClassName;
    }
};



/**
 * Generate a UUID
 * @returns {String} UUID
 *
 * Adapted from http://stackoverflow.com/a/2117523/526860
 */
ol.control.MeasureTool.uuid = function() {
    return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
        var r = Math.random()*16|0, v = c == 'x' ? r : (r&0x3|0x8);
        return v.toString(16);
    });
}

/**
* @private
* @desc Apply workaround to enable scrolling of overflowing content within an
* element. Adapted from https://gist.github.com/chrismbarr/4107472
*/
ol.control.MeasureTool.enableTouchScroll_ = function(elm) {
   if(ol.control.MeasureTool.isTouchDevice_()){
       var scrollStartPos = 0;
       elm.addEventListener("touchstart", function(event) {
           scrollStartPos = this.scrollTop + event.touches[0].pageY;
       }, false);
       elm.addEventListener("touchmove", function(event) {
           this.scrollTop = scrollStartPos - event.touches[0].pageY;
       }, false);
   }
};

/**
 * @private
 * @desc Determine if the current browser supports touch events. Adapted from
 * https://gist.github.com/chrismbarr/4107472
 */
ol.control.MeasureTool.isTouchDevice_ = function() {
    try {
        document.createEvent("TouchEvent");
        return true;
    } catch(e) {
        return false;
    }
};
