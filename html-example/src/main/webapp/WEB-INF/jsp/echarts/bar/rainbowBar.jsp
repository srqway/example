<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>rainbow bar</title>
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
					subtext : 'rainbow bar'
				},
				tooltip : {
					trigger : 'item'
				},
				xAxis : [ {
					type : 'category',
					data : [ 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J',
							'K' ]
				} ],
				yAxis : [ {
					type : 'value'
				} ],
				series : [ {
					name : 'data_1',
					type : 'bar',
					itemStyle : {
						normal : {
							color : function(params) {
								var colorList = [ '#C1232B', '#B5C334',
										'#FCCE10', '#E87C25', '#27727B',
										'#FE8463', '#9BCA63', '#FAD860',
										'#F3A43B', '#60C0DD', '#D7504B' ];
								return colorList[params.dataIndex]
							},
							label : {
								show : true,
								position : 'top',
								formatter : '{b}\n{c}'
							}
						}
					},
					data : [ 12, 21, 10, 4, 12, 5, 6, 5, 25, 23, 7 ],
				}]
			};
			myChart.setOption(option);
		});
	</script>
</body>
</html>