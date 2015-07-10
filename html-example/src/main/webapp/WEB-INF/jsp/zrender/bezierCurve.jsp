<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Zrender Circle</title>
<script
	src='<c:url value="/javascript/requirejs-master/require.js"></c:url>'></script>
</head>
<body>
	<div id="main"
		style="width: 100%; height: 500px; border: 1px solid #ccc"></div>
	<script type="text/javascript">
		require
				.config({
					paths : {
						'zrender' : '<c:url value="/javascript/zrender-2.0.8/build/zrender"></c:url>',
						'zrender/shape/BezierCurve' : '<c:url value="/javascript/zrender-2.0.8/build/zrender"></c:url>'
					}
				});
		require([ 'zrender', 'zrender/shape/BezierCurve' ], function(zrender,
				bezierCurve) {
			var zr = zrender.init(document.getElementById('main'));
			var shapeId = require('zrender/tool/guid')();
			zr.addShape(new bezierCurve({
				id : shapeId,
				style : {
					xStart : 100,
					yStart : 100,
					cpX1 : 300,
					cpY1 : 100,
					cpX2 : 100,
					cpY2 : 300,
					xEnd : 300,
					yEnd : 300,
					lineWidth : 5
				}
			}));
			zr.render();
		})
	</script>
</body>
</html>