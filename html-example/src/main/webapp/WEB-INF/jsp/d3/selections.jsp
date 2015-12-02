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
<script src="/html-example/javascript/d3-master/d3.min.js"></script>
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
	<script type="text/javascript">
		function attr() {
			d3.select("#attr").selectAll("div").attr({
				"align" : function(d, i) {
					return "left";
				}
			});
		}
	</script>
	<hr>
	<input type="button" value="classed color=red"
		onclick="javascript:classed();">
	<br>
	<div id="classed">
		<div>classed 0</div>
		<div>classed 1</div>
		<div>classed 2</div>
	</div>
	<script type="text/javascript">
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
	</script>
	<hr>
	<input type="button" value="style color=yellow"
		onclick="javascript:_style();">
	<br>
	<div id="style">
		<div>style 0</div>
		<div>style 1</div>
		<div>style 2</div>
	</div>
	<script type="text/javascript">
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
	</script>
	<hr>
	<input type="button" value="property checked=checked"
		onclick="javascript:property();">
	<br>
	<div id="property">
		<input type="checkbox" value="property 0"> <input
			type="checkbox" value="property 1"> <input type="checkbox"
			value="property 2">
	</div>
	<script type="text/javascript">
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
	</script>
	<hr>
	<input type="button" value="text" onclick="javascript:text();">
	<br>
	<div id="text">
		<div></div>
		<div></div>
		<div></div>
	</div>
	<script type="text/javascript">
		function text() {
			d3.select("#text").selectAll("div").text(function(d, i) {
				return "text " + i;
			});
		}
	</script>
	<hr>
	<input type="button" value="html" onclick="javascript:html();">
	<br>
	<div id="html">
		<div></div>
		<div></div>
		<div></div>
	</div>
	<script type="text/javascript">
		function html() {
			d3.select("#html").selectAll("div").html(function(d, i) {
				if ((i % 2) == 0) {
					return "<div>" + i + "</div>";
				} else {
					return null;
				}
			});
		}
	</script>
	<hr>
	<input type="button" value="insert" onclick="javascript:insert();">
	<br>
	<div id="insert">
		<div>insert 0</div>
		<div>insert 1</div>
		<div>insert 2</div>
	</div>
	<script type="text/javascript">
		function insert() {
			d3.select("#insert").selectAll("div").insert(function(d, i) {
				var div = document.createElementNS(d3.ns.prefix.xhtml, "div");
				div.innerHTML = "innerHTML " + i;
				return div;
			}, ":first-child");
		}
	</script>
	<hr>
	<input type="button" value="data" onclick="javascript:data();">
	<br>
	<ul id="data"></ul>
	<script type="text/javascript">
		function data() {
			var objs = [ {
				id : 5,
				name : "EEE"
			}, {
				id : 3,
				name : "CCC"
			}, {
				id : 1,
				name : "AAA"
			} ];
			var items = d3.select('#data').selectAll('li').data(objs,
					function(d) {
						return d.id;
					}).enter().append('li').text(function(d) {
				return "id:" + d.id + "; name:" + d.name;
			});
		}
	</script>
	<hr>
	<input type="button" value="datum" onclick="javascript:datum();">
	<br>
	<div id="datum">
		<div>0</div>
		<div>1</div>
		<div>2</div>
	</div>
	<script type="text/javascript">
		function datum() {
			var array = [ 100, 101, 102, 103, 104 ];
			var tr = d3.select("#datum").append("div").datum(array).datum(
					function(d, i) {
						return d;
					}).text(function(d, i) {
				return d;
			});
		}
	</script>
	<hr>
	<input type="button" value="sort" onclick="javascript:sort();">
	<br>
	<ul id="sort">
		<li data-username="shawnbot">Shawn Allen</li>
		<li data-username="mbostock">Mike Bostock</li>
	</ul>
	<script type="text/javascript">
		function sort() {
			d3.select("#sort").selectAll("li").datum(function() {
				return this.dataset;
			}).sort(function(a, b) {
				return d3.ascending(a.username, b.username);
			});
		}
	</script>
	<hr>
	<input type="button" value="order" onclick="javascript:order();">
	<br>
	<ul id="order"></ul>
	<script type="text/javascript">
		var objs = [ {
			id : 5,
			name : "EEE"
		}, {
			id : 3,
			name : "CCC"
		}, {
			id : 1,
			name : "AAA"
		} ];
		function orderRender() {
			var items = d3.select('#order').selectAll('li').data(objs,
					function(d) {
						return d.id;
					});
			items.enter().append('li').text(function(d) {
				return "id:" + d.id + "; name:" + d.name;
			});
			items.order();
		}
		orderRender();
		function order() {
			objs = [ objs[0], {
				id : 4,
				name : "DDD"
			} ].concat(objs.slice(1));
			orderRender();
		}
	</script>
	<hr>
	<input type="button" value="filter by function"
		onclick="javascript:filterByfunction();">
	<br>
	<div id="filterByfunction"></div>
	<script type="text/javascript">
		function filterByfunction() {
			var array = [ 100, 101, 102, 103, 104 ];
			d3.select("#filterByfunction").selectAll("div").data(array).enter()
					.append("div").filter(function(d, i) {
						return d % 2 === 0;
					}).text(function(d, i) {
						return d;
					});
		}
	</script>
	<hr>
	<input type="button" value="filter by string"
		onclick="javascript:filterByString();">
	<br>
	<div id="filterByString"></div>
	<script type="text/javascript">
		function filterByString() {
			var array = [ 100, 101, 102, 103, 104 ];
			d3.select("#filterByString").selectAll("div").data(array).enter()
					.append("div").filter(":nth-child(even)").text(
							function(d, i) {
								return d;
							});
		}
	</script>
	<hr>
	<div id="on">
		<div>(on) click me !!!</div>
		<div>(on) click me !!!</div>
		<div>(on) click me !!!</div>
	</div>
	<script type="text/javascript">
		d3.select("#on").selectAll("div").on("click", function(d, i) {
			alert("d:" + d + ";i:" + i);
		});
	</script>
	<hr>
	<div id="event">
		<div>(event) click me !!!</div>
		<div>(event) click me !!!</div>
		<div>(event) click me !!!</div>
	</div>
	<script type="text/javascript">
		d3.select("#event").selectAll("div").on("click", function(d, i) {
			var event = d3.event;
			alert(event);
		});
	</script>
	<hr>
	<div id="mouse">
		<div>(mouse) click me !!!</div>
		<div>(mouse) click me !!!</div>
		<div>(mouse) click me !!!</div>
	</div>
	<script type="text/javascript">
		d3.select("#mouse").selectAll("div").on("click", function(d, i) {
			var position = d3.mouse(this);
			alert(position);
		});
	</script>
	<hr>
	<input type="button" value="transition"
		onclick="javascript:transition();">
	<div id="transition">
		<div>transition 0</div>
		<div>transition 1</div>
		<div>transition 2</div>
	</div>
	<script type="text/javascript">
		function transition() {
			d3.select("#transition").transition().style("font-size", "100px");
		}
	</script>
	<hr>
	<input type="button" value="interruptStart"
		onclick="javascript:interruptStart();">
	<input type="button" value="interruptStop"
		onclick="javascript:interruptStop();">
	<div id="interrupt">
		<div>interrupt 0</div>
		<div>interrupt 1</div>
		<div>interrupt 2</div>
	</div>
	<script type="text/javascript">
		var obj = d3.select("#interrupt");
		function interruptStart() {
			obj.transition().duration(3000).style("font-size", "100px");
		}
		function interruptStop() {
			obj.interrupt();
		}
	</script>
	<hr>


</body>
</html>