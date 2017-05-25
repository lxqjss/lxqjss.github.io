//最终根据客户访问的ip地址确定当前地图范围
var ip="60.191.114.2";//默认杭州
ip = returnCitySN["cip"];//搜狐服务获取ip
var lxqjssKey="fe7500f9bcdab914ed3d65664b287e43";//高德key
var gaodeUrl="https://restapi.amap.com/v3/ip?ip="+ip+"&key="+lxqjssKey;
var customExtent;

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

