 var hangzhou = ol.proj.transform([120.18, 30.26], 'EPSG:4326', 'EPSG:3857');
 var view = new ol.View({
  center: hangzhou,
  zoom: 8,
  minZoom: 4,
  maxZoom: 18,
  //  extent: [
  // -40000000*100, -20037508.3427892+3000000,
  // 40000000*100, 20037508.3427892-3000000
  // ]
});
 var gmap_satellite_layer = new ol.layer.Tile({
  title: "仅卫星图",
  source: new ol.source.XYZ({
    url: 'https://mt1.google.cn/maps/vt?lyrs=s%40721&hl=zh-CN&gl=CN&x={x}&y={y}&z={z}'
  })
});
 var gmap_satellite_layer_anno= new ol.layer.Tile({
  title: "卫星图带文字",
  source: new ol.source.XYZ({
    url: ' http://mt3.google.cn/vt/lyrs=y&hl=zh-CN&gl=CN&src=app&x={x}&y={y}&z={z}&s=G'
  })
});
 var gmap_anno= new ol.layer.Tile({
  title: "仅文字",
  source: new ol.source.XYZ({
    urls: [
    "https://mt0.google.cn/vt/imgtp=png32&lyrs=h@365000000&hl=zh-CN&gl=cn&x={x}&y={y}&z={z}&s=Galil",
    "https://mt1.google.cn/vt/imgtp=png32&lyrs=h@365000000&hl=zh-CN&gl=cn&x={x}&y={y}&z={z}&s=Galil",
    "https://mt2.google.cn/vt/imgtp=png32&lyrs=h@365000000&hl=zh-CN&gl=cn&x={x}&y={y}&z={z}&s=Galil",
    "https://mt3.google.cn/vt/imgtp=png32&lyrs=h@365000000&hl=zh-CN&gl=cn&x={x}&y={y}&z={z}&s=Galil"
    ]})
});
 
 var googleTerrainLayer = new ol.layer.Tile({ 
  title: "谷歌地形地图", 
  source: new ol.source.XYZ({  
           url:'http://mt3.google.cn/vt/lyrs=t@131,r@216000000&hl=zh-CN&gl=CN&src=app&x={x}&y={y}&z={z}&s=Gal'//谷歌地形地图  
         }),  
  projection: 'EPSG:3857'  
});
 var nightLayers = new ol.layer.Tile({
  source: new ol.source.TileArcGISRest({
      // url: 'http://192.168.71.49:6080/arcgis/rest/services/map/night/MapServer'
      url: 'http://60.191.115.34:6080/arcgis/rest/services/nightlight/night/MapServer'
    })
});
 /***百度地图相关***/
 var projection = ol.proj.get("EPSG:3857");
 var resolutions = [];
 for(var i=0; i<19; i++){
  resolutions[i] = Math.pow(2, 18-i);
}
var tilegrid  = new ol.tilegrid.TileGrid({
  origin: [0,0],
  resolutions: resolutions
});
var baidu_source = new ol.source.TileImage({
  projection: projection,
  tileGrid: tilegrid,
  tileUrlFunction: function(tileCoord, pixelRatio, proj){
    if(!tileCoord){
      return "";
    }
    var z = tileCoord[0];
    var x = tileCoord[1];
    var y = tileCoord[2];

    if(x<0){
      x = "M"+(-x);
    }
    if(y<0){
      y = "M"+(-y);
    }
    //↓个性化百度地图（强边界风格）
    return "http://api1.map.bdimg.com/customimage/tile?&x="+x+"&y="+y+"&z="+z+"&udt=20170420&scale=1&ak=E4805d16520de693a3fe707cdc962045&customid=hardedge";
    //↓百度地图
    // return "http://online4.map.bdimg.com/tile/?qt=tile&x="+x+"&y="+y+"&z="+z+"&styles=sl&udt=20141015";
  }
});

var baidu_layer = new ol.layer.Tile({
  source: baidu_source
});
var tianditu_layer = new ol.layer.Tile({
  title: "天地图",
  source: new ol.source.XYZ({
    url: "http://t4.tianditu.com/DataServer?T=vec_w&x={x}&y={y}&l={z}"
  }),
  projection: 'EPSG:4490'  
});

var tianditu_anno= new ol.layer.Tile({
  title: "天地图注记",
  source: new ol.source.XYZ({
    url: 'http://t3.tianditu.com/DataServer?T=cva_w&x={x}&y={y}&l={z}'
  }),
  projection: 'EPSG:4490'  
});
/***兰溪路段图层**/
var lanxi_jproad_layer = new ol.layer.Tile({  
  source: new ol.source.TileArcGISRest({  
    // url:"http://61.130.148.100:6080/arcgis/rest/services/lanxi/lanxild/MapServer"
    url:"http://192.168.71.49:6080/arcgis/rest/services/map/jproad/MapServer"
  })  
});  
var gaodeMapLayer = new ol.layer.Tile({  
  source: new ol.source.XYZ({  
            url:'https://webrd03.is.autonavi.com/appmaptile?x={x}&y={y}&z={z}&lang=zh_cn&size=1&scale=1&style=8'//高德地图在线  
          }),  
  projection: 'EPSG:3857'  
});  
var gaodeMap_roadonly = new ol.layer.Tile({  
  title: "高德地图道路(无文字)",
  source: new ol.source.XYZ({  
            url:'http://wprd01.is.autonavi.com/appmaptile?x={x}&y={y}&z={z}&lang=zh_cn&size=1&scl=1&style=8&ltype=11'//高德地图注记服务  
          }),  
  projection: 'EPSG:3857'  
}); 
var gaodeMap_anno = new ol.layer.Tile({  
  title: "高德地图注记",
  source: new ol.source.XYZ({  
    urls: [
    "http://webst01.is.autonavi.com/appmaptile?style=8&x={x}&y={y}&z={z}",
    "http://webst02.is.autonavi.com/appmaptile?style=8&x={x}&y={y}&z={z}",
    "http://webst03.is.autonavi.com/appmaptile?style=8&x={x}&y={y}&z={z}",
    "http://webst04.is.autonavi.com/appmaptile?style=8&x={x}&y={y}&z={z}",
    ]
  }),  
  projection: 'EPSG:3857'  
}); 
var tencentMap_anno = new ol.layer.Tile({  
  title: "QQ地图注记",
  source: new ol.source.XYZ({  
            url:'http://rt3.map.gtimg.com/tile?x={x}&y={y}&z={z}&styleid=2&scene=0&version=225'//QQ地图注记服务  
          }),  
  projection: 'EPSG:3857'  
});
var stamenLayer = new ol.layer.Tile({  
  source: new ol.source.Stamen({  
            layer: 'toner',//terrain
          })  
});   
function loadXZQHVectorSource() {
 var url = "http://61.130.148.100:6080/arcgis/rest/services/lanxi/lanxild/FeatureServer/0/query";
 var data = {
  f: 'json',
  outFields: '*',
  spatialRel: 'esriSpatialRelIntersects',
  geometryType: 'esriGeometryEnvelope',
  returnGeometry: true,
  where: '1=1'
};
var esriJsonFormat = new ol.format.EsriJSON();
var vectorSource = new ol.source.Vector({strategy: ol.loadingstrategy.tile(new ol.tilegrid.XYZ({
  tileSize: 512
}))});
$.ajax({
  async:false,
  url: url,
  data: data,
  dataType: 'jsonp',
  success: function(response) {
    if (response.error) {
      HESCGIS.API.alert(response.error.message + '\n'
        + response.error.details.join('\n'));
    } else {
      var features = esriJsonFormat.readFeatures(response);
      for (var i in features) {
        var feature = features[i];
            //去除同一区域标题
            if (feature.getGeometry().getType()=='MultiPolygon'){
              var polygons = feature.getGeometry().getPolygons();
              var childFeature = new ol.Feature({
                geometry: polygons[0],
                FNAME: feature.get('FNAME'),
                isText: true
              });
              vectorSource.addFeature(childFeature);
              for (var j = 1; j < polygons.length; j++) {
                childFeature = new ol.Feature({
                  geometry: polygons[j],
                  FNAME: feature.get('FNAME'),
                  isText: false
                });
                vectorSource.addFeature(childFeature);
              }
            } else {
              feature.set('isText', true);
              vectorSource.addFeature(feature);
            }
          }
          regionLayer = new ol.layer.Vector({
            source: vectorSource,
            opacity: 0.6,
            style: regionStyleFunction
          });
          map.addLayer(regionLayer);
        }
      }
    });
}

/**
   * 网格图层首页样式函数
   */
   function regionStyleFunction(feature, resolution) {
    var style = new ol.style.Style({
      fill: new ol.style.Fill({
        color: 'rgba(40,53,69, 1)'
          //283545
        }),
      stroke: new ol.style.Stroke({
        color: '#27e8ff',
        width: 2
      }),
      text: feature.get("isText") ? new ol.style.Text({
        text: feature.get("FNAME"),
//        text: feature.get("JZ_Name"),
fill: new ol.style.Fill({
  color: '#27e8ff'
}),
font: '18px 宋体',
stroke: new ol.style.Stroke({
  color: '#27e8ff'
})
}) : null
    });
    return [style];
  }

/**
 * geoserver published tif layer
 * @type {ol}
 */
 var format = 'image/png';
 var untiled = new ol.layer.Image({
  source: new ol.source.ImageWMS({
    ratio: 1,
    url: 'http://42.123.127.101:8888/geoserver/hesc/wms',
    params: {'FORMAT': format,
    'VERSION': '1.1.1',  
    STYLES: '',
    LAYERS: 'hesc:nightlight',
  }
})
});
 var tilednight = new ol.layer.Tile({
        // visible: false,
        source: new ol.source.TileWMS({
          url: 'http://42.123.127.101:8888/geoserver/hesc/wms',
          params: {'FORMAT': format, 
          'VERSION': '1.1.1',
          tiled: true,
          STYLES: '',
          LAYERS: 'hesc:nightlight',
        }
      })
      });
 var map = new ol.Map({
   target: 'map',
   layers: [gmap_satellite_layer,gmap_anno],
   view: view,
   logo:false
// logo:"img/dt.jpg"
   });

 var overviewMapControl = new ol.control.OverviewMap({
  className: 'ol-overviewmap ol-custom-overviewmap',
  collapsed:false,
      // layers: [baidu_layer],//不写，则默认采用地图中的图层作为鹰眼
      tipLabel: "鹰眼",
      collapseLabel:"↙",
      label:"↗"
    });
 var mousePosition=new ol.control.MousePosition({
  coordinateFormat: ol.coordinate.createStringXY(6),//显示6位小数点
  projection: 'EPSG:4326'
})   

 var zoomToExtent=new ol.control.ZoomToExtent({
  label:"HZ",
  tipLabel:"回到杭州",
  extent: [
  13354031.2100, 3520102.6983,
  13402683.3785, 3554193.6129
  ]
}) ;
/*
测量控件
*/
var MeasureTool = new ol.control.MeasureTool({
  sphereradius : 6378137,//sphereradius
});

map.addControl(overviewMapControl);
map.addControl(new ol.control.ScaleLine());
map.addControl(new ol.control.ZoomSlider());
map.addControl(zoomToExtent);
map.addControl(mousePosition);
map.addControl(MeasureTool);


// loadXZQHVectorSource();

//用于坐标转换测试 存在错误 var gcj02towgs84=gcj02towgs84(coordinate[0], coordinate[1]);
// var gcj02towgs84=gcj02towgs84(120.138873, 30.251665);
// map.on('singleclick', function(evt) {
//   var coordinate = evt.coordinate;
//   coordinate=ol.proj.transform(coordinate, 'EPSG:3857', 'EPSG:4326');
//   var gcj02towgs84=gcj02towgs84(coordinate[0], coordinate[1]);
//   console.log(gcj02towgs84);
// });
// console.log(gcj02towgs84);
