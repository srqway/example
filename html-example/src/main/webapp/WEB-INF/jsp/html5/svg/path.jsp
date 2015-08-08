<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>path</title>
</head>
<body>
	<h5>moveto - lineto:</h5>
	<br>
	<svg>
		<path d="M10 10 L90 90" style="fill:rgb(0,0,255); stroke-width:3; stroke:rgb(0,0,0); fill-opacity:0.5; stroke-opacity:0.5;" />
	</svg>
	<br>
	<h5>moveto - horizontal lineto:</h5>
	<br>
	<svg>
		<path d="M10 10 H90" style="fill:rgb(0,0,255); stroke-width:3; stroke:rgb(0,0,0); fill-opacity:0.5; stroke-opacity:0.5;" />
	</svg>
	<br>
	<h5>moveto - curveto:</h5>
	<br>
	<svg>
		<path d="M10 90 C10 0,90 0,90 90" style="fill:none; stroke-width:3; stroke:rgb(0,0,0); fill-opacity:0.5; stroke-opacity:0.5;" />
	</svg>
	<br>
	<h5>moveto - smooth curveto:</h5>
	<br>
	<svg>
		<path d="M10 90 C10 0,90 0,90 90 S135 135,135 10" style="fill:none; stroke-width:3; stroke:rgb(0,0,0); fill-opacity:0.5; stroke-opacity:0.5;" />
	</svg>
	<br>
	<h5>moveto - quadratic Bézier curve:</h5>
	<br>
	<svg>
		<path d="M10 90 Q45 10,90 90" style="fill:none; stroke-width:3; stroke:rgb(0,0,0); fill-opacity:0.5; stroke-opacity:0.5;" />
	</svg>
	<br>
	<h5>moveto - quadratic Bézier curve - smooth quadratic Bézier curveto:</h5>
	<br>
	<svg>
		<path d="M10 90 Q45 10,90 90 T135 10" style="fill:none; stroke-width:3; stroke:rgb(0,0,0); fill-opacity:0.5; stroke-opacity:0.5;" />
	</svg>
	<br>
	<h5>moveto - curveto - closepath:</h5>
	<br>
	<svg>
		<path d="M10 90 C10 0,90 0,90 90 Z" style="fill:none; stroke-width:3; stroke:rgb(0,0,0); fill-opacity:0.5; stroke-opacity:0.5;" />
	</svg>
	<br>
	<h5>moveto - elliptical Arc:</h5>
	<br>
	<svg>
		<path d="M10 45 A20,20 0 0 1 45,90" stroke="#000" fill="none"/>
	</svg>			
	<hr>
</body>
</html>