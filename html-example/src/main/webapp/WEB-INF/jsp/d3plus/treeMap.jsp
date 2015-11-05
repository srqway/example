<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>d3plus tree map</title>
</head>
<body>
	<div id="viz" style="width: 300px; height: 300px;"></div>
</body>
<script src="/html-example/javascript/d3-master/d3.min.js"></script>
<script src="/html-example/javascript/d3plus-master/d3plus.min.js"></script>
<script type="text/javascript">
	d3.tsv("tsv.tsv", function(error, jsonData) {
		if (error) {
			alert(error);
			return;
		}
		convertStringToNumber(jsonData);
		make_viz(jsonData);
	});

	function convertStringToNumber(jsonData) {
		jsonData.forEach(function(d) {
			d3.keys(d).forEach(function(k){
				if(k == "id"){
					return;
				}
				d[k] = +d[k];
			})
		});
	}
	
	function make_viz(jsonData) {
		var visualization = d3plus.viz()
			.container("#viz")
			.data(jsonData)
			.type("tree_map")
			.id("id")
			.size("size")
			.time("time")
			.draw()
	}
</script>
</html>