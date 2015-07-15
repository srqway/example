<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>basic area</title>
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
		require([ 'echarts', 'echarts/chart/line' ], function(ec) {
			var myChart = ec.init(document.getElementById('main'));
			option = {
				title : {
					text : 'line',
					subtext : 'basic area'
				},
				tooltip : {
					trigger : 'axis'
				},
				legend : {
					data : [ 'data_1', 'data_2', 'data_3' ]
				},
				xAxis : [ {
					type : 'category',
					boundaryGap : false,
					data : [ '一', '二', '三', '四', '五', '六', '七' ]
				} ],
				yAxis : [ {
					type : 'value'
				} ],
				series : [ {
					name : 'data_1',
					type : 'line',
					smooth : true,
					itemStyle : {
						normal : {
							areaStyle : {
								type : 'default'
							}
						}
					},
					data : [ 10, 12, 21, 54, 260, 830, 710 ]
				}, {
					name : 'data_2',
					type : 'line',
					smooth : true,
					itemStyle : {
						normal : {
							areaStyle : {
								type : 'default'
							}
						}
					},
					data : [ 30, 182, 434, 791, 390, 30, 10 ]
				}, {
					name : 'data_3',
					type : 'line',
					smooth : true,
					itemStyle : {
						normal : {
							areaStyle : {
								type : 'default'
							}
						}
					},
					data : [ 1320, 1132, 601, 234, 120, 90, 20 ]
				} ]
			};
			myChart.setOption(option);
		});
	</script>
</body>
</html>