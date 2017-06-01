//最终根据客户访问的ip地址确定当前地图范围
// var ip="60.191.114.2";//默认杭州
// ip = returnCitySN["cip"];//搜狐服务获取ip
var lxqjssKey="fe7500f9bcdab914ed3d65664b287e43";//高德key
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
	var gaodeX = data.position.getLng();
  var gaodeY = data.position.getLat();
  if(os.isAndroid || os.isPhone){//手机端访问时对坐标进行偏移
    	$.ajax({
    	type : "get",
       async:false,//false代表只有在等待ajax执行完毕后才执行后方设置坐标代码
    	 url : "https://restapi.amap.com/v3/assistant/coordinate/convert?key="+lxqjssKey+"&locations="+data.position.getLng()+"," +data.position.getLat()+"&coordsys=gps",//发送请求地址
    	 success:function(output){
    	 	gaodeX = output.locations.split(",")[0].substring(0,10);
    	 	gaodeY = output.locations.split(",")[1].substring(0,9);
    	}
    });
  }
  map.getView().setCenter(ol.proj.transform([Number(gaodeX),Number(gaodeY)], 'EPSG:4326', 'EPSG:3857'));
  map.getView().setZoom(12);
  addlocationico(Number(gaodeX),Number(gaodeY));
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
var os = function() {  
     var ua = navigator.userAgent,  
     isWindowsPhone = /(?:Windows Phone)/.test(ua),  
     isSymbian = /(?:SymbianOS)/.test(ua) || isWindowsPhone,   
     isAndroid = /(?:Android)/.test(ua),   
     isFireFox = /(?:Firefox)/.test(ua),   
     isChrome = /(?:Chrome|CriOS)/.test(ua),  
     isTablet = /(?:iPad|PlayBook)/.test(ua) || (isAndroid && !/(?:Mobile)/.test(ua)) || (isFireFox && /(?:Tablet)/.test(ua)),  
     isPhone = /(?:iPhone)/.test(ua) && !isTablet,  
     isPc = !isPhone && !isAndroid && !isSymbian;  
     return {  
          isTablet: isTablet,  
          isPhone: isPhone,  
          isAndroid : isAndroid,  
          isPc : isPc  
     };  
}();  