<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stroke</title>
</head>
<body>
	<h5>stroke:</h5>
	<br>
	<svg>
		<path stroke="rgb(0,0,255)" d="M10 10 L90 90" />
	</svg>
	<br>
	<h5>stroke-width:</h5>
	<br>
	<svg>
		<path stroke="rgb(0,0,255)" stroke-width="6" d="M10 10 L90 90" />
	</svg>
	<br>
	<h5>stroke-linecap:</h5>
	<br>
	<svg>
		<g fill="none" stroke="rgb(0,0,255)" stroke-width="6">
			<path stroke-linecap="butt" d="M10 10 H90" />
			<path stroke-linecap="round" d="M10 30 H90" />
			<path stroke-linecap="square" d="M10 50 H90" />
		</g>
	</svg>
	<br>
	<h5>stroke-dasharray:</h5>
	<br>
	<svg>
		<g fill="none" stroke="rgb(0,0,255)" stroke-width="6">
			<path stroke-dasharray="10,5" d="M10 10 H90" />
			<path stroke-dasharray="20,10,5,5,5,10" d="M10 30 H90" />
		</g>
	</svg>
	<br>
</body>
</html>