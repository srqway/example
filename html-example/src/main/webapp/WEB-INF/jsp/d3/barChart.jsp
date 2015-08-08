<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>d3 bar chart</title>
</head>
<body>
	bar char:
	<input id="size" type="text" value="10">
	<input type="submit" onclick="submit();">
	<br>
	<br>
</body>
<script src="/html-example/javascript/d3-master/d3.min.js"></script>
<script type="text/javascript">
	var w = 500;
	var h = 150;
	var padding = 1;
	var svg = d3.select("body").append("svg").attr({
		"width" : w,
		"height" : h
	});
	function submit() {
		var size = document.getElementById("size");
		d3.csv('<c:url value="/d3/barChart/' + size.value + '"></c:url>',
				function(e, dataset) {
					if (e) {
						alert("errr : " + e);
					} else {
						reset();
						drawShape(dataset);
						addText(dataset);
					}
				});
		function reset() {
			svg.selectAll("*").remove();
		}
		function drawShape(dataset) {
			var circle = svg.selectAll("rect").data(dataset).enter().append(
					"rect").attr({
				"x" : function(d, i) {
					return i * (w / dataset.length);
				},
				"y" : function(d) {
					return h - d.column_1;
				},
				"width" : function(d, i) {
					return w / dataset.length - padding;
				},
				"height" : function(d) {
					return d.column_1;
				},
				"fill" : function(d) {
					return "rgb(0,0," + (2 * d.column_1) + ")";
				}
			});
		}
		function addText(dataset) {
			var text = svg.selectAll("text").data(dataset).enter().append(
					"text").text(function(d) {
				return d.column_1;
			}).attr({
				"x" : function(d, i) {
					return (i * (w / dataset.length)) + ((w / dataset.length - padding) / 2);
				},
				"y" : function(d) {
					return h - d.column_1 + 15;
				},
				"font-size" : "12px",
				"fill" : "rgb(255,0,0)",
				"text-anchor" : "middle"
			});

		}
	}
</script>
</html>