<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>basic shape</title>
</head>
<body>
	<h5>rect</h5>
	<svg>
  		<rect x="10" y="10" rx="20" ry="20" width="100" height="100"
			style="fill:rgb(0,0,255); stroke-width:3; stroke:rgb(0,0,0); fill-opacity:0.5; stroke-opacity:0.5;" />
	</svg>
	<hr>
	<h5>circle</h5>
	<svg>
		<circle cx="70" cy="70" r="50"
			style="fill:rgb(0,0,255); stroke-width:3; stroke:rgb(0,0,0); fill-opacity:0.5; stroke-opacity:0.5;" />
	</svg>
	<hr>
	<h5>ellipse</h5>
	<svg>
		<ellipse cx="70" cy="70" rx="60" ry="40"
			style="fill:rgb(0,0,255); stroke-width:3; stroke:rgb(0,0,0); fill-opacity:0.5; stroke-opacity:0.5;" />
	</svg>
	<hr>
	<h5>line</h5>
	<svg>
		<line x1="10" y1="10" x2="80" y2="80"
			style="fill:rgb(0,0,255); stroke-width:3; stroke:rgb(0,0,0); fill-opacity:0.5; stroke-opacity:0.5;" />
	</svg>
	<hr>
	<h5>polygon</h5>
	<svg>
		<polygon points="72,7 29,144 142,57 7,57 115,144"
			style="fill:rgb(0,0,255); stroke-width:3; stroke:rgb(0,0,0); fill-opacity:0.5; stroke-opacity:0.5; fill-rule:evenodd;" />  
	</svg>
	<hr>
	<h5>polyline</h5>
	<svg>
		<polyline points="72,7 29,144 142,57 7,57 115,144"
			style="fill:none; stroke-width:3; stroke:rgb(0,0,0); fill-opacity:0.5; stroke-opacity:0.5;" />  
	</svg>
	<hr>
</body>
</html>