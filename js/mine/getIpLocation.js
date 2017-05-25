//最终根据客户访问的ip地址确定当前地图范围
var ip="60.191.114.2";//默认杭州
ip = returnCitySN["cip"];//搜狐服务获取ip
var lxqjssKey="fe7500f9bcdab914ed3d65664b287e43";//高德key
var gaodeUrl="https://restapi.amap.com/v3/ip?ip="+ip+"&key="+lxqjssKey;
var customExtent;

var options={
  enableHighAccuracy:true, //是否要求高精度的地理信息，默认为false
  maximumAge:1000 //应用程序的缓存时间
}
if (navigator.geolocation) {
  navigator.geolocation.getCurrentPosition(onSuccess,onError,options);
}
else {
  console.log("浏览器不支持!");
}       
function onSuccess(position){
   //返回用户位置
   var longitude =position.coords.longitude;
   var latitude = position.coords.latitude;
   map.getView().setCenter(ol.proj.transform([longitude, latitude], 'EPSG:4326', 'EPSG:3857'));
   map.getView().setZoom(12);
    console.log("已经定位!");
 }
function onError(error){
	//无法获取精确定位则采取ip城市定位
	$.ajax({
		type : "get",
		 url : gaodeUrl,//发送请求地址
		 success:function(data){
		 	var xmin=Number(data.rectangle.split(";")[0].split(",")[0]);
		 	var ymin=Number(data.rectangle.split(";")[0].split(",")[1]);
		 	var xmax=Number(data.rectangle.split(";")[1].split(",")[0]);
		 	var ymax=Number(data.rectangle.split(";")[1].split(",")[1]);
		  customExtent =[xmin,ymin,xmax,ymax];
		  customExtent=ol.proj.transformExtent(customExtent, 'EPSG:4326', 'EPSG:3857');
		  map.getView().fitExtent(customExtent,map.getSize());
		}
	});

	switch(error.code){
	  case error.PERMISSION_DENIED:
	  console.log("用户拒绝对获取地理位置的请求");
	  break;
	  case error.POSITION_UNAVAILABLE:
	  console.log("位置信息是不可用的");
	  break;
	  case error.TIMEOUT:
	  console.log("请求用户地理位置超时");
	  break;
	  case error.UNKNOWN_ERROR:
	  console.log("未知错误");
	  break;
	}
}
 