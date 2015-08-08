<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>text</title>
</head>
<body>
	<h5>rotate</h5>
	<br>
	<svg>
		<text x="10" y="10" transform="rotate(30 20,40)" style="fill:rgb(0,0,255); stroke-width:1; stroke:rgb(0,0,0); fill-opacity:0.5; stroke-opacity:0.5;">rotate</text>
	</svg>
	<hr>
	<h5>tspan</h5>
	<br>
	<svg>
	  <text x="10" y="00">
	    <tspan x="10" y="45" style="fill:rgb(255,0,0); stroke-width:1; stroke:rgb(0,0,0); fill-opacity:0.5; stroke-opacity:0.5;">first line.</tspan>
	    <tspan x="10" y="70" style="fill:rgb(0,255,0); stroke-width:1; stroke:rgb(0,0,0); fill-opacity:0.5; stroke-opacity:0.5;">second line.</tspan>
	    <tspan x="10" y="95" style="fill:rgb(0,0,255); stroke-width:1; stroke:rgb(0,0,0); fill-opacity:0.5; stroke-opacity:0.5;">third line.</tspan>
	  </text>
	</svg>
	<hr>
	<h5>hyperlink</h5>
	<br>
	<svg>
		<a xlink:href="http://www.w3schools.com/svg/" target="_blank">
			<text x="10" y="10" style="fill:rgb(0,0,255); stroke-width:1; stroke:rgb(0,0,0); fill-opacity:0.5; stroke-opacity:0.5;">hyperlink</text>
		</a>
	</svg>
	
</body>
</html>