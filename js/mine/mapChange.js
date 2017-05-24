$("#mapchange_map").on('click',function(){
	map.getLayers().clear();
	map.addLayer(gaodeMapLayer);
	$(".ol-mouse-position").css('color','black');//设置下方坐标提示信息的颜色
});
$("#mapchange_satellite").on('click',satelliteFunction);
$("input").bind('change',satelliteFunction);

$("#satelliteDiv").on({
	mouseover:function(){$(".dropdown-menu").css('display','block');},
	mouseout:function(){$(".dropdown-menu").css('display','none');}
});
/**
 * [satelliteFunction 用于切换到卫星图的响应函数]
 * @return {[type]} [description]
 */
function satelliteFunction(){
	map.getLayers().clear();
	$(".ol-mouse-position").css('color','white');//设置下方坐标提示信息的颜色

	if($('#checkboxAnno').is(':checked')){//地名勾选
		if($('#RadiosNormal').is(':checked')){
			map.addLayer(gmap_satellite_layer);
		}else if($('#RadiosNight').is(':checked')){
			map.addLayer(nightLayers);
			// map.addLayer(tiled);
		}
		map.addLayer(gmap_anno);
	}else{//地名不勾选
		if($('#RadiosNormal').is(':checked')){
			map.addLayer(gmap_satellite_layer);
		}else if($('#RadiosNight').is(':checked')){
			map.addLayer(nightLayers);
			// map.addLayer(tiled);
		}
	}
}
function flyToHZ(zoom){
  var duration = 2000;
  var start = +new Date();
  var pan = ol.animation.pan({
    duration: duration,
    source: /** @type {ol.Coordinate} */ (view.getCenter()),
    start: start
  });
  var bounce = ol.animation.bounce({
    duration: duration,
    resolution: 4 * view.getResolution(),
    start: start
  });
  map.beforeRender(pan, bounce);
  view.setCenter(hangzhou);
  view.setZoom(zoom);
};