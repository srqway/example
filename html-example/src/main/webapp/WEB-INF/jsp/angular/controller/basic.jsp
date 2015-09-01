<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html data-ng-app="myApp" data-ng-strict-di>
<head>
<meta charset="UTF-8">
<title>controller basic</title>
<script src="/html-example/javascript/angular-1.4.4/angular.min.js"></script>
</head>
<body data-ng-controller="MyController">
	<input type="text" data-ng-model="model"></input>
	<br>
	$scope.field : {{field}}
	<br>
	$scope.method : {{method()}}
</body>
<script>
	var myApp = angular.module('myApp', [])
		.controller('MyController', ['$scope', function($scope) {
			$scope.model = "scope model";
			$scope.field = "scope field";
			$scope.method = function() {
				return "scope method";
			}
		}]);
</script>
</html>