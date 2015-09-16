<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html data-ng-app="myApp" data-ng-strict-di>
<head>
<meta charset="UTF-8">
<title>method index</title>
<script src="/html-example/javascript/angular-1.4.4/angular.min.js"></script>
</head>
<body data-ng-controller="MyController">
	get map length : {{getLength(map)}}
	<br>
	{{map | json}}
	<hr>
	get array length : {{getLength(array)}}
	<br>
	{{array | json}}
	<hr>
</body>
<script>
	var myApp = angular.module('myApp', [])
		.controller('MyController', ['$scope', function($scope) {
			$scope.map = {
				"a" : "0",
				"b" : "1",
				"c" : "2"
			};
			$scope.array = ['a', 'b', 'c', 'd', 'e'];
			$scope.getLength = function(obj) {
			    return Object.keys(obj).length;
			};
		}]);
</script>
</html>