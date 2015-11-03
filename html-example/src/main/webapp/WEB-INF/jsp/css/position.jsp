<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css font</title>
<style type="text/css">
span#position_static {
	position: static;
	background-color: red;
}

span#position_relative {
	position: relative;
	background-color: yellow;
	left: 30px;
	top: 30px;
}

span#position_fixed {
	position: fixed;
	background-color: blue;
	right: 0;
	bottom: 0;
}

/* container shouldn't be "position: static;" */
span#container {
    position: absolute;
	background-color: green;
	left: 10em;
	top: 10em;
	width: 20em;
	height: 20em;
} 

span#position_absolute {
    position: absolute;
    background-color: lime;
	left: 5em;
	top: 5em;
	width: 10em;
	height: 10em;
}

img#z-index {
	position: absolute;
	left: 4em;
	top: 4em;
	width: 2em;
	height: 2em;
	z-index: 5;
}
</style>
</head>
<body>
	before(position: static;)
	<span id="position_static">position: static;</span> 
	after(position: static;)
	<br> 
	(position: relative;)
	<span id="position_relative">position: relative;</span> 
	after(position: relative;)
	<br>
	before(position: fixed;)
	<span id="position_fixed">position: fixed;</span> 
	after(position: fixed;)
	<br>
	before(container)
	<span id="container">
		before(position: absolute;)
		<span id="position_absolute">
			position: absolute;
		</span> 
		after(position: absolute;)
		<img id="z-index" src="/html-example/image/2.png">
	</span> 
	after(container)
	<br>
</body>
</html>