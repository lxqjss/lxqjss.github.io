//最终根据客户访问的ip地址确定当前地图范围
// var ip="60.191.114.2";//默认杭州
// ip = returnCitySN["cip"];//搜狐服务获取ip
// var lxqjssKey="fe7500f9bcdab914ed3d65664b287e43";//高德key
// var gaodeUrl="https://restapi.amap.com/v3/ip?ip="+ip+"&key="+lxqjssKey;
// var customExtent;

// $.ajax({
// 	type : "get",
// 	 url : gaodeUrl,//发送请求地址
// 	 success:function(data){
// 	 	var xmin=Number(data.rectangle.split(";")[0].split(",")[0]);
// 	 	var ymin=Number(data.rectangle.split(";")[0].split(",")[1]);
// 	 	var xmax=Number(data.rectangle.split(";")[1].split(",")[0]);
// 	 	var ymax=Number(data.rectangle.split(";")[1].split(",")[1]);
// 	  customExtent =[xmin,ymin,xmax,ymax];
// 	  customExtent=ol.proj.transformExtent(customExtent, 'EPSG:4326', 'EPSG:3857');
// 	  map.getView().fitExtent(customExtent,map.getSize());
// 	}
// });

/**
 * 采用高德精准定位方式
 */
var locationLayer;
var gaodemap = new AMap.Map('gaodemap', {
	resizeEnable: true
});
gaodemap.plugin('AMap.Geolocation', function() {
	geolocation = new AMap.Geolocation({
            enableHighAccuracy: true,//是否使用高精度定位，默认:true
            timeout: 10000,          //超过10秒后停止定位，默认：无穷大
            buttonOffset: new AMap.Pixel(10, 20),//定位按钮与设置的停靠位置的偏移量，默认：Pixel(10, 20)
            zoomToAccuracy: true,      //定位成功后调整地图视野范围使定位位置及精度范围视野内可见，默认：false
            buttonPosition:'RB'
        });
        // map.addControl(geolocation);
        geolocation.getCurrentPosition();
        AMap.event.addListener(geolocation, 'complete', onComplete);//返回定位信息
        AMap.event.addListener(geolocation, 'error', onError);      //返回定位出错信息
    });
function onComplete(data) {
	map.getView().setCenter(ol.proj.transform([data.position.getLng(), data.position.getLat()], 'EPSG:4326', 'EPSG:3857'));
	map.getView().setZoom(12);
	addlocationico(data.position.getLng(), data.position.getLat());
}
function onError(data) {
	console.log("error");
}
/**
 * 添加所在位置坐标点
 * @param  {[type]} locationX [高德返回的坐标点x]
 * @param  {[type]} locationY [高德返回的坐标点y]
 * @return {[type]}           [null]
 */
function addlocationico(locationX,locationY){
	var locationFeatrue = new ol.Feature({  
       geometry:new ol.geom.Point(ol.proj.fromLonLat([locationX,locationY]))
   });
   locationFeatrue.setStyle(new ol.style.Style({  
       image:new ol.style.Icon({  
       // color:'#4271AE',  
       src:'img/loc.png'  
        })  
      }));
   var source = new ol.source.Vector({  
    features:[locationFeatrue]  
	});  
   locationLayer = new ol.layer.Vector({  
       source: source  
	});  
   map.addLayer(locationLayer);
}