<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>map</title>
<!-- <script src="/html-example/javascript/jquery-2.1.4/jquery-2.1.4.min.js"></script> -->
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
			require('echarts/util/mapData/params').params.continent = {
			    getGeoJson: function (callback) {
			        $.getJSON('http://localhost:8080/html-example/javascript/echarts-2.2.4/doc/example/geoJson/continent_geo.json',callback);
			    }
			}
			option = {
			    title : {
			        text : '金棕榈 智慧旅行@云数据',
			        subtext: 'by 江江的喵',
			        link: 'http://www.palmyou.com/',
			        sublink: 'http://weibo.com/u/2813464944'
			    },
			    tooltip : {
			        trigger: 'item',
			        formatter: function (params){
			            var value = params.value + '万人次 （' + (params.value/98.19).toFixed(2) + '%）';
			            return params.seriesName + '<br/>' + params.name + ' : ' + value;
			        }
			    },
			    toolbox: {
			        show : true,
			        orient : 'vertical',
			        x: 'right',
			        y: 'center',
			        feature : {
			            mark : {show: true},
			            dataView : {show: true, readOnly: false},
			            restore : {show: true},
			            saveAsImage : {show: true}
			        }
			    },
			    dataRange: {
			        min: 0,
			        max: 1000,
			        text:['热', '冷'],
			        splitNumber:0,
			        color: ['orangered','yellow','lightskyblue']
			    },
			    series : [
			        {
			            name: '2013年出境目的地（洲际统计）',
			            type: 'map',
			            mapType: 'continent', // 自定义扩展图表类型
			            itemStyle:{
			                normal:{label:{show:true}},
			                emphasis:{label:{show:true}}
			            },
			            data:[
			                {name: '亚洲', value: 8967.69},
			                {name: '大洋洲', value: 592.09},
			                {name: '欧洲', value: 183.62},
			                {name: '北美洲', value: 41.63},
			                {name: '南美洲', value: 10.41},
			                {name: '非洲', value: 22.5837}
			            ],
			            // 文本位置修正
			            textFixed : {
			                '大洋洲' : [265, 0],
			                '非洲' : [10, -30],
			                '北美洲' : [20, 0],
			                '南美洲' : [0, -10],
			                '亚洲' : [20, -30],
			                '欧洲' : [200, -10],
			            }
			        }
			    ]
			};

			myChart.setOption(option);
		});
	</script>
</body>
</html>