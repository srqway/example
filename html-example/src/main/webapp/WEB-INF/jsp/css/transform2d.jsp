<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css 2D transform</title>
<style type="text/css">
#transform_translate_50px_100px {
	width: 20em;
	height: 10em;
	background-color: red;
	-ms-transform: translate(50px, 100px);
	-webkit-transform: translate(50px, 100px);
	transform: translate(50px, 100px);
}

#transform_rotate_20deg {
	width: 20em;
	height: 10em;
	background-color: yellow;
	-ms-transform: rotate(20deg);
	-webkit-transform: rotate(20deg);
	transform: rotate(20deg);
}

#transform_scale_05_05 {
	width: 20em;
	height: 10em;
	background-color: blue;
	-ms-transform: scale(0.5, 0.5);
	-webkit-transform: scale(0.5, 0.5);
	transform: scale(0.5, 0.5);
}

#transform_skewX_20deg {
	width: 20em;
	height: 10em;
	background-color: green;
	-ms-transform: skewX(20deg);
	-webkit-transform: skewX(20deg);
	transform: skewX(20deg);
	-ms-transform: skewX(20deg);
	-webkit-transform: skewX(20deg);
}

#transform_skewY_20deg {
	width: 20em;
	height: 10em;
	background-color: red;
	-ms-transform: skewY(20deg);
	-webkit-transform: skewY(20deg);
	transform: skewY(20deg);
}

#transform_skew_20deg_10deg {
	width: 20em;
	height: 10em;
	background-color: yellow;
	-ms-transform: skew(20deg, 10deg);
	-webkit-transform: skew(20deg, 10deg);
	transform: skew(20deg, 10deg);
}

#transform_matrix_1_0_05_1_150_0 {
	width: 20em;
	height: 10em;
	background-color: blue;
	-ms-transform: matrix(1, 0, 0.5, 1, 150, 0);
	-webkit-transform: matrix(1, 0, 0.5, 1, 150, 0);
	transform: matrix(1, 0, 0.5, 1, 150, 0);
}
</style>
</head>
<body>
	<div id="transform_translate_50px_100px">transform:
		translate(50px,100px);</div>
	<br>
	<div id="transform_rotate_20deg">transform: rotate(20deg);</div>
	<br>
	<div id="transform_scale_05_05">transform: scale(0.5, 0.5);</div>
	<br>
	<div id="transform_skewX_20deg">transform: skewX(20deg);</div>
	<br>
	<div id="transform_skewY_20deg">transform: skewY(20deg);</div>
	<br>
	<div id="transform_skew_20deg_10deg">transform:
		skew(20deg,10deg);</div>
	<br>
	<div id="transform_matrix_1_0_05_1_150_0">transform: matrix(1, 0,
		0.5, 1, 150, 0);</div>
	<br>
</body>
</html>