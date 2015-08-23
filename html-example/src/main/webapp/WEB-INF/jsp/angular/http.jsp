<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>http</title>
<script src="/html-example/javascript/angular-1.4.4/angular.min.js"></script>
</head>
<body data-ng-app="ngApp" data-ng-controller="controller">
	<ul>
		<li data-ng-repeat="x in datas">{{ x.integerValue + ' ' + x.floatValue + ' ' + x.date }}</li>
	</ul>
	<hr>
</body>
<script>
	var app = angular.module('ngApp', []);
	app.controller('controller', function($scope, $http) {
		$http.get("httpJson").success(function(response) {
			$scope.datas = response;
		});
	});
</script>
</html>