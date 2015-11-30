<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>d3 basic</title>
<style type="text/css">
.classed {
	color: red;
}
</style>
</head>
<body>
	<input type="button" value="attr align=left"
		onclick="javascript:attr();">
	<br>
	<div id="attr">
		<div align="right">attr 0</div>
		<div align="right">attr 1</div>
		<div align="right">attr 2</div>
	</div>
	<hr>
	<input type="button" value="classed color=red"
		onclick="javascript:classed();">
	<br>
	<div id="classed">
		<div>classed 0</div>
		<div>classed 1</div>
		<div>classed 2</div>
	</div>
	<hr>
	<input type="button" value="style color=yellow"
		onclick="javascript:_style();">
	<br>
	<div id="style">
		<div>style 0</div>
		<div>style 1</div>
		<div>style 2</div>
	</div>
	<hr>
	<input type="button" value="property checked=checked"
		onclick="javascript:property();">
	<br>
	<div id="property">
		<input type="checkbox" value="property 0"> <input
			type="checkbox" value="property 1"> <input type="checkbox"
			value="property 2">
	</div>
	<hr>
	<input type="button" value="text" onclick="javascript:text();">
	<br>
	<div id="text">
		<div></div>
		<div></div>
		<div></div>
	</div>
	<hr>
	<input type="button" value="html" onclick="javascript:html();">
	<br>
	<div id="html">
		<div></div>
		<div></div>
		<div></div>
	</div>
	<hr>
	<input type="button" value="insert" onclick="javascript:insert();">
	<br>
	<div id="insert">
		<div>insert 0</div>
		<div>insert 1</div>
		<div>insert 2</div>
	</div>
	<hr>
</body>
<script src="/html-example/javascript/d3-master/d3.min.js"></script>
<script type="text/javascript">
	function attr() {
		d3.select("#attr").selectAll("div").attr({
			"align" : function(d, i) {
				return "left";
			}
		});
	}

	function classed() {
		d3.select("#classed").selectAll("div").classed({
			"classed" : function(d, i) {
				if ((i % 2) == 0) {
					return true;
				} else {
					return false;
				}
			}
		});
	}

	function _style() {
		d3.select("#style").selectAll("div").style({
			"color" : function(d, i) {
				if ((i % 2) == 0) {
					return "yellow";
				} else {
					return null;
				}
			}
		});
	}

	function property() {
		d3.select("#property").selectAll("input").property({
			"checked" : function(d, i) {
				if ((i % 2) == 0) {
					return "checked";
				} else {
					return null;
				}
			}
		});
	}

	function text() {
		d3.select("#text").selectAll("div").text(function(d, i) {
			return "text " + i;
		});
	}

	function html() {
		d3.select("#html").selectAll("div").html(function(d, i) {
			if ((i % 2) == 0) {
				return "<div>" + i + "</div>";
			} else {
				return null;
			}
		});
	}

	function insert() {
		d3.select("#insert").selectAll("div").insert(function(d, i) {
			var div = document.createElementNS(d3.ns.prefix.xhtml, "div");
			div.innerHTML = "innerHTML " + i;
			return div;
		}, ":first-child");
	}
</script>
</html>