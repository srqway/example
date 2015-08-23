<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>controller</title>
<script src="/html-example/javascript/angular-1.4.4/angular.min.js"></script>
</head>
<body data-ng-app="" data-ng-init="arr=[{a:111,b:'one'},{a:222,b:'two'},{a:333,b:'three'}];">
	uppercase : {{ 'uppercase' | uppercase }}
	<br>
	lowercase : {{ 'LOWERCASE' | lowercase }}
	<br>
	currency : {{ 12345 | currency }}
	<br>
	order by : 
	<ul>
		<li data-ng-repeat="x in arr | orderBy : 'b'">{{ x.a + " " + x.b }}</li>
	</ul>
	<br>
	filter : <input type="text" data-ng-model="myFilter">
	<ul>
		<li data-ng-repeat="x in arr | filter:myFilter">{{ x.a + " " + x.b }}</li>
	</ul>
	<br>
</body>
</html>