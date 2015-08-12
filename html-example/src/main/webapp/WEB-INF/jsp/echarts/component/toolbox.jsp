<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>toolbox</title>
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
		require([ 'echarts', 'echarts/chart/line', 'echarts/chart/bar' ],
				function(ec) {
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
						toolbox : {
							show : true,
							feature : {
								mark : {
									show : true,
									title : {
										mark : '輔助線開關',
										markUndo : '刪除輔助線',
										markClear : '清空輔助線'
									},
									lineStyle : {
										width : 10,
										color : 'red',
										type : 'dashed'
									}
								},
								dataZoom : {
									show : true,
									title : {
										dataZoom : '區域縮放',
										dataZoomReset : '區域縮放後退'
									}
								},
								dataView : {
									show : true,
									title : '數據視圖',
									readOnly : false,
									lang : [ '數據視圖', '關閉', '刷新' ]
								},
								magicType : {
									show : true,
									title : {
										line : '折線圖切換',
										bar : '柱形圖切換',
										stack : '堆積圖切換',
										tiled : '平鋪圖切換'
									},
									type : [ 'line', 'bar', 'stack', 'tiled' ]
								},
								restore : {
									show : true,
									title : '還原'
								},
								saveAsImage : {
									show : true,
							        title : '保存為圖片',
							        type : 'png',
							        lang : ['點擊保存']
								}
							}
						},
						calculable : true,
						dataZoom : {
							show : true,
							realtime : true,
							start : 0,
							end : 100
						},
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