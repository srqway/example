<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>d3 scatter plot</title>
<style type="text/css">
.axis path, .axis line {
	fill: none;
	stroke: rgb(0, 255, 0);
	shape-rendering: crispEdges;
}

.axis text {
	font-family: sans-serif;
	font-size: 11px;
}
</style>
</head>
<body>
	scatter plot:
	<input id="size" type="text" value="10">
	<input type="submit" onclick="submit();">
	<br>
	<br>
</body>
<script src="/html-example/javascript/d3-master/d3.min.js"></script>
<script type="text/javascript">
	var w = 500;
	var h = 500;
	var padding = 1;
	var marginPadding = 30;
	var valueScale;
	var xScale = d3.scale.linear().domain([ 0, 500 ]).range([ 0, w ]);
	var yScale = d3.scale.linear().domain([ 0, 500 ]).range([ h, 0 ]);
	var colorScale = d3.scale.category20();

	var svg = d3.select("body").append("svg").attr({
		"width" : w,
		"height" : h
	});
	function submit() {
		var size = document.getElementById("size").value;
		d3.csv('<c:url value="/d3/scatterPlot/' + size + '"></c:url>',
				function(e, dataset) {
					if (e) {
						alert("error : " + e);
					} else {
						reset(dataset);
						drawShape(dataset);
						addText(dataset);
						addAxis();
					}
				});
		function reset(dataset) {
			svg.selectAll("*").remove();
			var maxValue = d3.max(dataset, function(d) {
				return d.value;
			});
			var maxValueSqrt = Math.sqrt(maxValue);
			valueScale = d3.scale.sqrt().domain([ 0, maxValue ]).range(
					[ 0, maxValueSqrt ]);
		}
		function drawShape(dataset) {
			var circle = svg.selectAll("circle").data(dataset).enter().append(
					"circle").attr({
				"cx" : function(d, i) {
					return d.x;
				},
				"cy" : function(d) {
					return yScale(d.y);
				},
				"r" : function(d) {
					return valueScale(d.value);
				},
				"fill" : function(d, i) {
					return colorScale(i);
				}
			});
		}
		function addText(dataset) {
			var text = svg.selectAll("text").data(dataset).enter().append(
					"text").text(function(d) {
				return d.value;
			}).attr({
				"x" : function(d) {
					return d.x;
				},
				"y" : function(d) {
					return yScale(d.y);
				},
				"font-size" : "12px",
				"fill" : "rgb(255,0,0)",
				"text-anchor" : "middle"
			});

		}
		function addAxis() {
			var xAxis = d3.svg.axis().scale(xScale).orient("bottom");
			svg.append("g").attr({
				"class" : "axis",
				"transform" : "translate(0," + (h - marginPadding) + ")"
			}).call(xAxis);
			var yAxis = d3.svg.axis().scale(yScale).orient("left");
			svg.append("g").attr({
				"class" : "axis",
				"transform" : "translate(" + marginPadding + ",0)"
			}).call(yAxis);
		}
	}
</script>
</html>