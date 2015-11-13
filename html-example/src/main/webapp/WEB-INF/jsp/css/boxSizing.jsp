<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css box sizing</title>
<style type="text/css">
#without_padding {
	width: 300px;
	height: 100px;
	border: 1px solid blue;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

#with_padding {
	width: 300px;
	height: 100px;
	padding: 50px;
	border: 1px solid red;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}
</style>
</head>
<body>
	<div id="without_padding">
		width: 300px;<br> 
		height: 100px;<br> 
		border: 1px solid blue;<br>
		box-sizing: border-box;
	</div>
	<br>
	<div id="with_padding">
		width: 300px;<br> 
		height: 100px;<br> 
		padding: 50px;<br>
		border: 1px solid red;<br> 
		box-sizing: border-box;
	</div>
	<br>
</body>
</html>