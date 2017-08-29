<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>basic pie</title>
</head>
<body>
	<div id="main" style="height: 400px"></div>
	<script
		src="/html-example/javascript/echarts-2.2.4/build/dist/echarts.js"></script>
	<script type="text/javascript">
		require
				.config({
					paths : {
						echarts : 'http://localhost:8080/html-example/javascript/echarts-2.2.4/build/dist'
					}
				});
		require([ 'echarts', 'echarts/chart/pie' ], function(ec) {
			var myChart = ec.init(document.getElementById('main'));
			option = {
				title : {
					text : 'pie',
					subtext : 'basic pie'
				},
				tooltip : {
					trigger : 'item',
					formatter: "{a} <br/>{b} : {c} ({d}%)"
				},
				legend : {
					orient : 'vertical',
					x : 'left',
					data : [ 'data_0', 'data_1', 'data_2', 'data_3', 'data_4' ]
				},
				toolbox: {
					show : true,
					feature : {
						mark : {show: true},
						dataView : {show: true, readOnly: false},
						magicType : {
							show: true, 
							type: ['pie', 'funnel'],
							option: {
								funnel: {
									x: '25%',
									width: '50%',
									funnelAlign: 'left',
									max: 1548
								}
							}
						},
						restore : {show: true},
						saveAsImage : {show: true}
					}
				},
				calculable : true,
				series : [
					{
						name : 'data',
						type : 'pie',
						radius : '55%',
						center: ['50%', '60%'],
						data:[
							{value:335, name:'data_0'},
							{value:310, name:'data_1'},
							{value:234, name:'data_2'},
							{value:135, name:'data_3'},
							{value:1548, name:'data_4'}
						]
					}
				]
			};
			myChart.setOption(option);
		});
	</script>
</body>
</html>