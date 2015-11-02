<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css box model</title>
<style type="text/css">
body {
	background-color: green;
}
div {
    background-color: yellow;
    margin: 25px;
    outline: black solid;
	border: 5px dotted red;
	padding: 10px;
}
span {
	background-color: blue;
}
</style>
</head>
<body>
	<div>
		<span>
		    background-color: yellow;
		    <br>
		    margin: 25px;
		    <br>
			border: 5px dotted red;
			<br>
			padding: 10px;
		</span>
	</div>
</body>
</html>