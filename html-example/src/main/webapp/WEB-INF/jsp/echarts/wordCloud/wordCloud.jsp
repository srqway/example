<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>word cloud</title>
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
		require([ 'echarts', 'echarts/chart/wordCloud' ], function(ec) {
			function generateRandomItemStyle() {
				return {
					normal : {
						color : 'rgb('
								+ [ Math.round(Math.random() * 255),
										Math.round(Math.random() * 255),
										Math.round(Math.random() * 255) ]
										.join(',') + ')'
					}
				};
			}
			var myChart = ec.init(document.getElementById('main'));
			option = {
				title : {
					text : 'word cloud',
					subtext : 'word cloud'
				},
				tooltip : {
					show : true
				},
				series : [ {
					name : 'series name',
					type : 'wordCloud',
					size : [ '100%', '100%' ],
					textRotation : [ 0, 45, 90, -45 ],
					textPadding : 0,
					autoSize : {
						enable : true,
						minSize : 1
					},
					data : [ {
						name : "Word A",
						value : 10000,
						itemStyle : generateRandomItemStyle()
					}, {
						name : "Word B",
						value : 6000,
						itemStyle : generateRandomItemStyle()
					}, {
						name : "Word C",
						value : 1000,
						itemStyle : generateRandomItemStyle()
					} ]
				} ]
			};
			myChart.setOption(option);
		});
	</script>
</body>
</html>