<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>directive</title>
<script src="/html-example/javascript/angular-1.4.4/angular.min.js"></script>
</head>
<body data-ng-app="" data-ng-init="myInput='myInput';arr=[{a:111,b:'one'},{a:222,b:'two'},{a:333,b:'three'}];">
	data-ng-model : <input type="text" data-ng-model="myInput">
	{{myInput}}
	<hr> 
	data-ng-repeat :
	<ul>
		<li data-ng-repeat="x in arr">{{ x.a + " " + x.b }}</li>
	</ul>
	<hr>
</body>
</html>