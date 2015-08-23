<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>expression</title>
<script src="/html-example/javascript/angular-1.4.4/angular.min.js"></script>
</head>
<body data-ng-app="" data-ng-init="a=3;b='test';obj={a:3,b:'test'};arr=[3,'test'];">
	expression(<span data-ng-non-bindable>{{ 3 + 5 }}</span>) : <span>{{ 3 + 5 }}</span>
	<br>
	data-ng-init(a=3;b='test') : <span>{{ a + b }}</span>
	<br>
	object(obj={a:3,b:'test'}) : <span>{{ obj.a + obj.b }}</span>
	<br>
	array(arr=[3,'test']) : <span>{{ arr[0] + arr[1] }}</span>
	<br>
</body>
</html>