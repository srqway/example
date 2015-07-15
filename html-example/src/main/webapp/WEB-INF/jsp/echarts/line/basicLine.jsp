<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>basic line</title>
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
					subtext : 'basic line'
				},
				tooltip : {
					trigger : 'axis'
				},
				legend : {
					data : [ 'data_1', 'data_2' ]
				},
				calculable : true,
				xAxis : [ {
					type : 'category',
					boundaryGap : false,
					axisLabel : {
						formatter : '星期{value}'
					},
					data : [ '一', '二', '三', '四', '五', '六', '日' ]
				} ],
				yAxis : [ {
					type : 'value',
					axisLabel : {
						formatter : '{value} 個'
					}
				} ],
				series : [ {
					name : 'data_1',
					type : 'line',
					smooth : true,
					data : [ 11, 11, 15, 13, 12, 13, 14 ],
					markPoint : {
						data : [ {
							type : 'max',
							name : '最大值'
						}, {
							type : 'min',
							name : '最小值'
						}, {
							name : '目前',
							value : 10,
							xAxis : 6,
							yAxis : 14
						} ]
					},
					markLine : {
						data : [ {
							type : 'average',
							name : '平均值'
						} ]
					}
				}, {
					name : 'data_2',
					type : 'line',
					smooth : true,
					data : [ 1, -2, 2, 5, 3, 2, 0 ]
				} ]
			};
			myChart.setOption(option);
		});
	</script>
</body>
</html>