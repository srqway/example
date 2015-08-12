<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>on</title>
</head>
<body>
	<div id="main" style="height: 400px"></div>
	<div id="hover-console">hover-console</div>
	<div id="console">console</div>
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
						    tooltip : {
						        trigger: 'axis'
						    },
						    legend: {
						        data:['最高','最低']
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
						        start : 40,
						        end : 60
						    },
						    xAxis : [
						        {
						            type : 'category',
						            boundaryGap : true,
						            data : function (){
						                var list = [];
						                for (var i = 1; i <= 30; i++) {
						                    list.push('2013-03-' + i);
						                }
						                return list;
						            }()
						        }
						    ],
						    yAxis : [
						        {
						            type : 'value'
						        }
						    ],
						    series : [
						        {
						            name:'最高',
						            type:'line',
						            data:function (){
						                var list = [];
						                for (var i = 1; i <= 30; i++) {
						                    list.push(Math.round(Math.random()* 30) + 30);
						                }
						                return list;
						            }()
						        },
						        {
						            name:'最低',
						            type:'bar',
						            data:function (){
						                var list = [];
						                for (var i = 1; i <= 30; i++) {
						                    list.push(Math.round(Math.random()* 10));
						                }
						                return list;
						            }()
						        }
						    ]
						};
						var ecConfig = require('echarts/config');
						function eConsole(param) {
						    var mes = '【' + param.type + '】';
						    if (typeof param.seriesIndex != 'undefined') {
						        mes += '  seriesIndex : ' + param.seriesIndex;
						        mes += '  dataIndex : ' + param.dataIndex;
						    }
						    if (param.type == 'hover') {
						        document.getElementById('hover-console').innerHTML = 'Event Console : ' + mes;
						    }
						    else {
						        document.getElementById('console').innerHTML = mes;
						    }
						    console.log(param);
						}
						/*
						// -------全局通用
						REFRESH: 'refresh',
						RESTORE: 'restore',
						RESIZE: 'resize',
						CLICK: 'click',
						DBLCLICK: 'dblclick',
						HOVER: 'hover',
						MOUSEOUT: 'mouseout',
						// -------业务交互逻辑
						DATA_CHANGED: 'dataChanged',
						DATA_ZOOM: 'dataZoom',
						DATA_RANGE: 'dataRange',
						DATA_RANGE_HOVERLINK: 'dataRangeHoverLink',
						LEGEND_SELECTED: 'legendSelected',
						LEGEND_HOVERLINK: 'legendHoverLink',
						MAP_SELECTED: 'mapSelected',
						PIE_SELECTED: 'pieSelected',
						MAGIC_TYPE_CHANGED: 'magicTypeChanged',
						DATA_VIEW_CHANGED: 'dataViewChanged',
						TIMELINE_CHANGED: 'timelineChanged',
						MAP_ROAM: 'mapRoam',
						*/
						myChart.on(ecConfig.EVENT.CLICK, eConsole);
						myChart.on(ecConfig.EVENT.DBLCLICK, eConsole);
						//myChart.on(ecConfig.EVENT.HOVER, eConsole);
						myChart.on(ecConfig.EVENT.DATA_ZOOM, eConsole);
						myChart.on(ecConfig.EVENT.LEGEND_SELECTED, eConsole);
						myChart.on(ecConfig.EVENT.MAGIC_TYPE_CHANGED, eConsole);
						myChart.on(ecConfig.EVENT.DATA_VIEW_CHANGED, eConsole);
						                    
					myChart.setOption(option);
				});
	</script>
</body>
</html>