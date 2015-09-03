<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html data-ng-app="myApp" data-ng-strict-di>
<head>
<meta charset="UTF-8">
<title>directive include</title>
<script src="/html-example/javascript/angular-1.4.4/angular.min.js"></script>
</head>
<body data-ng-controller="MyController">
	<input type="radio" name="radio" value="include/sub_0" data-ng-model="criteria.radio">
	<input type="radio" name="radio" value="include/sub_1" data-ng-model="criteria.radio">
	<br>
	<span data-ng-include="criteria.radio"></span>
</body>
<script>
	var myApp = angular.module('myApp', [])
		.controller('MyController', ['$scope', function($scope) {
			$scope.a = "a";
		}]);
</script>
</html>