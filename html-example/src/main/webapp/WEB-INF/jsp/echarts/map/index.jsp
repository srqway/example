<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>taiwan map</title>
</head>
<body>
	<div id="main" style="height: 400px"></div>
	<script
		src="/html-example/javascript/echarts-2.2.4/build/dist/echarts.js"></script>
	<script type="text/javascript">
		require.config({
			paths : {
				jquery : 'http://localhost:8080/html-example/javascript/jquery-2.1.4/jquery-2.1.4.min',
				echarts : 'http://localhost:8080/html-example/javascript/echarts-2.2.4/build/dist',
				'echarts/chart/map':'http://localhost:8080/html-example/javascript/echarts-2.2.4/build/dist/chart/map' 
			}
		});
		
		require(
			[ 'jquery', 'echarts', 'echarts/chart/map'], function($, ec) {
			var myChart = ec.init(document.getElementById('main'));
			require('echarts/util/mapData/params').params.taiwan = {
			    getGeoJson: function (callback) {
			        $.getJSON('http://localhost:8080/html-example/javascript/twgeojson-master/twcounty2010.2_for_echarts.json',callback);
			    },
			    specialArea : {
			        '連江縣' : {              // 把阿拉斯加移到美国主大陆左下方
			            left : 130,        // 安放位置起始点为西经113
			            top : 23,           // 北纬31度
			            width : 15,         // 区间大小宽高不大于15度
			            height : 15
			        }
			    }
			}
			option = {
			    tooltip : {
			        trigger: 'item',
			        formatter: function (params){
			            return params.seriesName + '<br/>' + params.name + ' : ' + params.value;
			        }
			    },
			    dataRange: {
			        min: 0,
			        max: 10000,
			        text:['high', 'low'],
			        splitNumber:0,
			        color: ['orangered','yellow','lightskyblue']
			    },
			    series : [
			        {
			            name: 'polulation',
			            type: 'map',
			            mapType: 'taiwan',
			            itemStyle:{
			                normal:{label:{show:true}},
			                emphasis:{label:{show:true}}
			            },
			            selectedMode: 'multiple',
			            roam: true,
			            data:[
			                {"name":"臺東縣", value: 63.86},
		                	{"name":"花蓮縣", value: 72.03},
		                	{"name":"苗栗縣", value: 311.56},
		                	{"name":"雲林縣", value: 546.43},
		                	{"name":"高雄市", value: 942.79},
		                	{"name":"南投縣", value: 125.25},
		                	{"name":"嘉義縣", value: 275.67},
		                	{"name":"宜蘭縣", value: 214.02},
		                	{"name":"屏東縣", value: 305.49},
		                	{"name":"新北市", value: 1932.61, selected: true},
		                	{"name":"桃園市", value: 1685.84},
		                	{"name":"臺中市", value: 1227.97},
		                	{"name":"臺北市", value: 9942.30},
		                	{"name":"臺南市", value: 859.75},
		                	{"name":"金門縣", value: 842.19},
		                	{"name":"連江縣", value: 434.24},
		                	{"name":"澎湖縣", value: 802.10},
		                	{"name":"嘉義市", value: 4512.79},
		                	{"name":"基隆市", value: 2810.18},
		                	{"name":"彰化縣", value: 1202.05},
		                	{"name":"新竹市", value: 4147.64},
		                	{"name":"新竹縣", value: 376.61}
			            ],
			            textFixed : {
			                "臺東縣" : [10, 0],
		                	"花蓮縣" : [20, 0],
		                	"苗栗縣" : [-25, -5],
		                	"雲林縣" : [-20, -5],
		                	"高雄市" : [-35, 20],
		                	"南投縣" : [-2, 0],
		                	"嘉義縣" : [-40, 0],
		                	"宜蘭縣" : [20, 0],
		                	"屏東縣" : [-15, 10],
		                	"新北市" : [0, 0],
		                	"桃園市" : [-20, -20],
		                	"臺中市" : [-35, -5],
		                	"臺北市" : [-20, -15],
		                	"臺南市" : [-25, 0],
		                	"金門縣" : [0, -10],
		                	"連江縣" : [10, 0],
		                	"澎湖縣" : [-20, -10],
		                	"嘉義市" : [5, 0],
		                	"基隆市" : [15, -10],
		                	"彰化縣" : [-20, 0],
		                	"新竹市" : [-20, 2],
		                	"新竹縣" : [-25, -20]
			            }
			        }
			    ]
			};

			myChart.setOption(option);
		});
	</script>
</body>
</html>