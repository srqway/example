<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>d3 basic</title>
</head>
<body>
	<input type="button" value="update" onclick="javascript:update();">
	<input type="button" value="enter" onclick="javascript:enter();">
	<input type="button" value="remove" onclick="javascript:_remove();">
	<input type="button" value="all" onclick="javascript:_all();">
	<p>1</p>
	<p>2</p>
	<p>3</p>
	<hr>
	<input type="button" value="matrixData" onclick="javascript:matrixData();">
	<div id="matrixData"></div>
	<hr>
</body>
<script src="/html-example/javascript/d3-master/d3.min.js"></script>
<script type="text/javascript">
	function update() {
		d3.select("body").selectAll("p").data([ 'a', 'b', 'c' ]).text(
				function(d) {
					return d;
				});
	}
	function enter() {
		d3.select("body").selectAll("p").data([ 'w', 'x', 'y', 'z' ]).enter()
				.append("p").text(function(d) {
					return d;
				});
	}
	function _remove() {
		d3.select("body").selectAll("p").data([ '1', '2' ]).exit().remove();
	}
	function _all() {
		var ps = d3.select("body").selectAll("p").data([ 'i', 'j', 'k' ]);
		ps.exit().remove();
		ps.enter().append("p");
		ps.text(function(d) {
			return d;
		});
	}
	function matrixData() {
		var matrix = [ [ 0, 1, 2, 3 ], [ 4, 5, 6, 7 ], [ 8, 9, 10, 11 ],
				[ 12, 13, 14, 15 ] ];
		var tr = d3.select("#matrixData").append("table").selectAll("tr").data(
				matrix).enter().append("tr");
		var td = tr.selectAll("td").data(function(d, i) {
			return d;
		}).enter().append("td").text(function(d, i) {
			return d;
		});
	}
</script>
</html>