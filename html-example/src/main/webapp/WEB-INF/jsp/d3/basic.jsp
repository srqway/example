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
	<p>1</p>
	<p>2</p>
	<p>3</p>
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
</script>
</html>