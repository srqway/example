<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>c3 timeseries</title>
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="/html-example/javascript/c3-master/c3.min.css">
<script src="/html-example/javascript/jquery-2.1.4/jquery-2.1.4.min.js"></script>
<script
	src="/html-example/javascript/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>
<script src="/html-example/javascript/d3-master/d3.min.js"></script>
<script src="/html-example/javascript/c3-master/c3.min.js"></script>
<script src="/html-example/javascript/thank/c3.thank.chartBase.js"></script>
<script
	src="/html-example/javascript/thank/c3.thank.timeseriesAreaSplineChart.js"></script>
<script
	src="/html-example/javascript/thank/c3.thank.timeseriesAreaStepChart.js"></script>
<script
	src="/html-example/javascript/thank/c3.thank.timeseriesCombinationChart.js"></script>
</head>
<body>
	<c:if test="${not empty list}">
		<h2>Area Spline Chart</h2>
		<br>
		<div id="timeseriesAreaSplineChart"></div>
		<br>
		<script type="text/javascript">
			var timeseriesAreaSplineChartParam = {
				"bindto" : "#timeseriesAreaSplineChart",
				data : {
					names : {
						data1 : 'data 1',
						data2 : 'data 2'
					},
					rows : [
							[ 'x', 'data1', 'data2' ],
							<c:forEach var="v" items="${list}">[
								'<fmt:formatDate pattern="yyyy/MM/dd" value="${v.date}"/>',
								'${v.integerValue}',
								'${v.floatValue}'],
							</c:forEach> ],
					groups : [ [ 'data1', 'data2' ] ]
				},
				size : {
					height : 500,
					width : 500
				},
				subchart: {
					show: true
				}
			}
			timeseriesAreaSplineChart(timeseriesAreaSplineChartParam);
		</script>
		<h2>Area Step Chart</h2>
		<div id="timeseriesAreaStepChart"></div>
		<br>
		<script type="text/javascript">
			var timeseriesAreaStepChartParam = {
				bindto : "#timeseriesAreaStepChart",
				data : {
					xFormat : "%Y/%m/%d",
					names : {
						data1 : 'data 1',
						data2 : 'data 2'
					},
					rows : [
							[ 'x', 'data1', 'data2' ],
							<c:forEach var="v" items="${list}">[
								'<fmt:formatDate pattern="yyyy/MM/dd" value="${v.date}"/>',
								'${v.integerValue}',
								'${v.floatValue}'],
							</c:forEach> ]
				},
				axis : {
					x : {
						tick : {
							format : "%Y/%m/%d"
						}
					}
				}
			}
			timeseriesAreaStepChart(timeseriesAreaStepChartParam);
		</script>
		<h2>Combination Chart</h2>
		<div id="timeseriesCombinationChart"></div>
		<script type="text/javascript">
			var timeseriesCombinationChartParam = {
				"bindto" : "#timeseriesCombinationChart",
				data : {
					names : {
						data1 : 'data 1',
						data2 : 'data 2'
					},
					rows : [
							[ 'x', 'data1', 'data2' ],
							<c:forEach var="v" items="${list}">[
								'<fmt:formatDate pattern="yyyy/MM/dd" value="${v.date}"/>',
								'${v.integerValue}',
								'${v.floatValue}'],
							</c:forEach> ],
					types : {
						data2 : 'bar'
					},
					axes : {
						data2 : 'y2'
					}
				}
			}
			timeseriesCombinationChart(timeseriesCombinationChartParam);
		</script>
	</c:if>
</body>
</html>