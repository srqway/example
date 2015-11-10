<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css box shadown</title>
<style type="text/css">
#box-shadow_10px_10px_grey {
	box-shadow: 10px 10px grey;
}

#box-shadow_10px_10px_5px_grey {
	box-shadow: 10px 10px 5px grey;
}
</style>
</head>
<body>
	<div id="box-shadow_10px_10px_grey">box-shadow: 10px 10px grey;</div>
	<br>
	<div id="box-shadow_10px_10px_5px_grey">box-shadow: 10px 10px 5px
		grey;</div>
</body>
</html>