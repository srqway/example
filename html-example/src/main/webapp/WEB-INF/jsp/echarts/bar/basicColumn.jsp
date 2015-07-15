<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>basic column</title>
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
		require([ 'echarts', 'echarts/chart/bar' ], function(ec) {
			var myChart = ec.init(document.getElementById('main'));
			option = {
				title : {
					text : 'bar',
					subtext : 'basic column'
				},
				tooltip : {
					trigger : 'axis'
				},
				legend : {
					data : [ 'data_1', 'data_2' ]
				},
				xAxis : [ {
					type : 'category',
					data : [ 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J',
							'K', 'L' ]
				} ],
				yAxis : [ {
					type : 'value'
				} ],
				series : [
						{
							name : 'data_1',
							type : 'bar',
							data : [ 2.0, 4.9, 7.0, 23.2, 25.6, 76.7, 135.6,
									162.2, 32.6, 20.0, 6.4, 3.3 ],
							markPoint : {
								data : [ {
									type : 'max',
									name : '最大值'
								}, {
									type : 'min',
									name : '最小值'
								} ]
							},
							markLine : {
								data : [ {
									type : 'average',
									name : '平均值'
								} ]
							}
						},
						{
							name : 'data_2',
							type : 'bar',
							data : [ 2.6, 5.9, 9.0, 26.4, 28.7, 70.7, 175.6,
									182.2, 48.7, 18.8, 6.0, 2.3 ],
							markPoint : {
								data : [ {
									name : '最大值'
								}, {
									name : '最小值'
								} ]
							},
							markLine : {
								data : [ {
									type : 'average',
									name : '平均值'
								} ]
							}
						} ]
			};
			myChart.setOption(option);
		});
	</script>
</body>
</html>