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
		require([ 'echarts', 'echarts/chart/force', 'echarts/chart/chord' ],
				function(ec) {
					var myChart = ec.init(document.getElementById('main'));
					option = {
						title : {
							text : 'force',
							subtext : 'simple topology'
						},
						tooltip : {
							trigger : 'item',
							formatter : '{a} <br/> {b}'
						},
						legend : {
							x : 'right',
							data : [ '家人', '朋友' ]
						},
						series : [ {
							type : 'force',
							name : "relationship",
							ribbonType : false,
							categories : [ {
								name : '人物'
							}, {
								name : '家人'
							}, {
								name : '朋友'
							} ],
							itemStyle : {
								normal : {
									label : {
										show : true,
										textStyle : {
											color : '#333'
										}
									},
									nodeStyle : {
										borderWidth : 0
									},
									linkStyle : {
										type : 'curve'
									}
								}
							},
							useWorker : true,
							minRadius : 15,
							maxRadius : 30,
							nodes : [ {
								category : 0,
								name : 'me',
								value : 10,
								label : '我'
							}, {
								category : 1,
								name : 'father',
								value : 8,
								label : '爸爸'
							}, {
								category : 1,
								name : 'mother',
								value : 8,
								label : '媽媽'
							}, {
								category : 1,
								name : 'wife',
								value : 7,
								label : '妻子'
							}, {
								category : 1,
								name : 'sister',
								value : 7,
								label : '妹妹'
							}, {
								category : 2,
								name : 'cousin_1',
								value : 5,
								label : '表弟'
							}, {
								category : 2,
								name : 'cousin_2',
								value : 5,
								label : '表妹'
							}, {
								category : 2,
								name : 'colleague',
								value : 3,
								label : '同事'
							}, ],
							links : [ {
								source : 'me',
								target : 'father',
								weight : 5,
								name : 'me and father'
							}, {
								source : 'me',
								target : 'mother',
								weight : 5,
								name : 'me and mother'
							}, {
								source : 'me',
								target : 'wife',
								weight : 8,
								name : 'me and wife'
							}, {
								source : 'me',
								target : 'sister',
								weight : 5,
								name : 'me and sister'
							}, {
								source : 'me',
								target : 'cousin_1',
								weight : 3,
								name : 'me and cousin_1'
							}, {
								source : 'me',
								target : 'cousin_2',
								weight : 3,
								name : 'me and cousin_2'
							}, {
								source : 'me',
								target : 'colleague',
								weight : 1,
								name : 'me and colleague'
							}, {
								source : 'father',
								target : 'mother',
								weight : 10,
								name : 'father and mother'
							}, {
								source : 'wife',
								target : 'sister',
								weight : 8,
								name : 'wife and sister'
							} ]
						} ]
					};
					var ecConfig = require('echarts/config');
					function click(param) {
						var data = param.data;
						var links = option.series[0].links;
						var nodes = option.series[0].nodes;
						if (data.source !== undefined
								&& data.target !== undefined) { // 點擊的是邊
							var sourceNode = nodes.filter(function(n) {
								return n.name == data.source
							})[0];
							var targetNode = nodes.filter(function(n) {
								return n.name == data.target
							})[0];
							alert("from " + sourceNode.name + ' to '
									+ targetNode.name + ' (weight : ' + data.weight
									+ ')');
						} else { // 點擊的是點
							alert("select " + data.name + '(value : ' + data.value
									+ ')');
						}
					}
					myChart.on(ecConfig.EVENT.CLICK, click);
					myChart.setOption(option);
				});
	</script>
</body>
</html>