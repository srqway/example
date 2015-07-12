<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>line</title>
<!-- <script src="/html-example/javascript/jquery-2.1.4/jquery-2.1.4.min.js"></script> -->
</head>
<body>
	<div id="main" style="height: 400px"></div>
	<script
		src="/html-example/javascript/echarts-2.2.4/build/dist/echarts.js"></script>
	<script type="text/javascript">
		require.config({
			paths : {
				echarts : 'http://localhost:8080/html-example/javascript/echarts-2.2.4/build/dist'
			}
		});
		require(
			[ 'echarts', 'echarts/chart/line'], function(ec) {
			var myChart = ec.init(document.getElementById('main'));
			option = {
				    title : {
				        text: '某楼盘销售情况',
				        subtext: '纯属虚构'
				    },
				    tooltip : {
				        trigger: 'axis'
				    },
				    legend: {
				        data:['意向','预购','成交']
				    },
				    toolbox: {
				        show : true,
				        feature : {
				            mark : {show: true},
				            dataView : {show: true, readOnly: false},
				            magicType : {show: true, type: ['line', 'bar', 'stack', 'tiled']},
				            restore : {show: true},
				            saveAsImage : {show: true}
				        }
				    },
				    calculable : true,
				    xAxis : [
				        {
				            type : 'category',
				            boundaryGap : false,
				            data : ['周一','周二','周三','周四','周五','周六','周日']
				        }
				    ],
				    yAxis : [
				        {
				            type : 'value'
				        }
				    ],
				    series : [
				        {
				            name:'成交',
				            type:'line',
				            smooth:true,
				            itemStyle: {normal: {areaStyle: {type: 'default'}}},
				            data:[10, 12, 21, 54, 260, 830, 710]
				        },
				        {
				            name:'预购',
				            type:'line',
				            smooth:true,
				            itemStyle: {normal: {areaStyle: {type: 'default'}}},
				            data:[30, 182, 434, 791, 390, 30, 10]
				        },
				        {
				            name:'意向',
				            type:'line',
				            smooth:true,
				            itemStyle: {normal: {areaStyle: {type: 'default'}}},
				            data:[1320, 1132, 601, 234, 120, 90, 20]
				        }
				    ]
				};

			myChart.setOption(option);
		});
	</script>
</body>
</html>