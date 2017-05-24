$(".gmap_switch_satellite").on({
	mouseover:function(){$("#gmap_switch_anno").css('display','block');},
	mouseout:function(){$("#gmap_switch_anno").css('display','none');}
})
$("#gmap_switch_anno").click(function(){
	$(".ol-mouse-position").css('color','white');
	if($("#gmap_switch_anno_selected").css('display')=='none')
	{
		$("#gmap_switch_anno_selected").css('display','block');
		// map.getLayers().clear();
		// removeAllLayers();
        // map.addLayer(gmap_satellite_layer_anno);
        map.addLayer(gmap_anno);
        $(".gmap_switch_satellite>div:first").css('font-weight','normal');
        $(".gmap_switch_map div").css('font-weight','normal');
        $("#gmap_switch_anno div").css('font-weight','bold');
	}else{
		$("#gmap_switch_anno_selected").css('display','none');
		// map.getLayers().clear();
		// removeAllLayers();
        // map.addLayer(gmap_satellite_layer);
        map.removeLayer(gmap_anno);
        $(".gmap_switch_satellite>div:first").css('font-weight','bold');
        $(".gmap_switch_map div").css('font-weight','normal');
        $("#gmap_switch_anno div").css('font-weight','normal');
	}
})
$(".gmap_switch_map").on('click',function(){
	map.getLayers().clear();
	// removeAllLayers();
	// map.addLayer(baidu_layer);
	map.addLayer(gaodeMapLayer);
	// map.addLayer(tianditu_layer);
	$(".ol-mouse-position").css('color','black');//设置下方坐标提示信息的颜色
	$(".gmap_switch_map div").css('font-weight','bold');
	$(".gmap_switch_satellite>div:first").css('font-weight','normal');
	$("#gmap_switch_anno div").css('font-weight','normal');
	$("#gmap_switch_anno_selected").css('display','none');

})
$(".gmap_switch_satellite>div:first").on('click',function(){
	map.getLayers().clear();
	// removeAllLayers();
	// map.addLayer(gmap_satellite_layer);
	map.addLayer(nightLayers);
	
	$(".ol-mouse-position").css('color','white');
	$(this).css('font-weight','bold');
	$("#gmap_switch_anno div").css('font-weight','normal');
	$(".gmap_switch_map div").css('font-weight','normal');
	$("#gmap_switch_anno_selected").css('display','none');
})
// function removeAllLayers(){
// 	// map.removeLayer(baidu_layer);
// 	map.removeLayer(gaodeMapLayer);
// 	// map.removeLayer(tianditu_layer);
// 	map.removeLayer(gmap_satellite_layer);
// 	map.removeLayer(gmap_satellite_layer_anno);
// }