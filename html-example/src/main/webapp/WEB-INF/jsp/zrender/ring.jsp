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
						'zrender/shape/Ring' : '<c:url value="/javascript/zrender-2.0.8/build/zrender"></c:url>'
					}
				});
		require([ 'zrender', 'zrender/shape/Ring' ], function(zrender, ring) {
			var zr = zrender.init(document.getElementById('main'));
			var shapeId = require('zrender/tool/guid')();
			zr.addShape(new ring({
				id : shapeId,
				style : {
					x : 200,
					y : 200,
					r : 100,
					r0 : 50
				}
			}));
			zr.render();
		})
	</script>
</body>
</html>