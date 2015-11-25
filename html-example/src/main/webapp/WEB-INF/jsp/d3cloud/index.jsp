<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D3cloud Index</title>
<script src="/html-example/javascript/d3-master/d3.min.js"></script>
<script
	src="/html-example/javascript/d3-cloud-master/build/d3.layout.cloud.js"></script>
<script>
	d3.tsv("tsv.tsv", function(error, data) {
		var fill = d3.scale.category20();
		d3.layout.cloud().size([ 300, 300 ]).words(data).padding(1).rotate(
				function(d) {
					return 0;
				}).fontSize(function(d) {
			return d.size;
		}).on("end", draw).start();

		function draw(words) {
			d3.select("body").append("svg").attr("width", 300).attr("height",
					300).append("g").attr("transform", "translate(100,100)")
					.selectAll("text").data(words).enter().append("text")
					.style("font-size", function(d) {
						return (d.size * 3) + "px";
					}).style("font-family", "Impact").style("fill",
							function(d, i) {
								return fill(i);
							}).attr("text-anchor", "middle").attr(
							"transform",
							function(d) {
								return "translate(" + [ d.x, d.y ] + ")rotate("
										+ d.rotate + ")";
							}).text(function(d) {
						return d.word;
					});
		}
	})
</script>
</head>
<body>
</body>
</html>