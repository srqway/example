<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css 3D transform</title>
<style type="text/css">
#transform_rotateX_150deg {
	width: 20em;
	height: 10em;
	background-color: red;
	-webkit-transform: rotateX(150deg);
	transform: rotateX(150deg);
}

#transform_rotateY_150deg {
	width: 20em;
	height: 10em;
	background-color: yellow;
	-webkit-transform: rotateY(150deg);
	transform: rotateY(150deg);
}

#transform_rotateZ_150deg {
	width: 20em;
	height: 10em;
	background-color: blue;
	-webkit-transform: rotateZ(150deg);
	transform: rotateZ(150deg);
}

</style>
</head>
<body>
	<div id="transform_rotateX_150deg">transform: rotateX(150deg);</div>
	<br>
	<div id="transform_rotateY_150deg">transform: rotateY(150deg);</div>
	<br>
	<div id="transform_rotateZ_150deg">transform: rotateZ(150deg);</div>
	<br>
</body>
</html>