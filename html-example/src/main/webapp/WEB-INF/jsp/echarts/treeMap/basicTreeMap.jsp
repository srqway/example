<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>basic tree map</title>
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
		require([ 'echarts', 'echarts/chart/treemap' ], function(ec) {
			var myChart = ec.init(document.getElementById('main'));
			option = {
				title : {
					text : 'tree map',
					subtext : 'basic tree map'
				},
				tooltip : {
					trigger : 'item'
				},
				series : [ {
					name : 'basic tree map data',
					type : 'treemap',
					itemStyle : {
						normal : {
							label : {
								show : true,
								formatter : "normal style : {b}"
							}
						},
						emphasis : {
							label : {
								show : true
							}
						}
					},
					data : [ {
						name : 'data_1',
						value : 6
					}, {
						name : 'data_2',
						value : 4
					}, {
						name : 'data_3',
						value : 4
					}, {
						name : 'data_4',
						value : 2
					}, {
						name : 'data_5',
						value : 2
					}, {
						name : 'data_6',
						value : 1
					}, {
						name : 'data_7',
						value : 1
					} ]
				} ]
			};
			myChart.setOption(option);
		});
	</script>
</body>
</html>