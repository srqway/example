<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html data-ng-app="myApp" data-ng-strict-di>
<head>
<meta charset="UTF-8">
<title>directive bind</title>
<script src="/html-example/javascript/angular-1.4.4/angular.min.js"></script>
<script src="/html-example/javascript/angular-1.4.4/angular-sanitize.min.js"></script>
</head>
<body data-ng-controller="MyController">
	ng-bind : <span data-ng-bind="bind"></span>
	<br>
	ng-bind-html : <span data-ng-bind-html="bindHtml"></span>
	<br>
	ng-bind-template : <span data-ng-bind-template="{{bind}} & {{bindHtml}}!"></span>
	<br>
</body>
<script>
	var myApp = angular.module('myApp', ['ngSanitize'])
		.controller('MyController', ['$scope', function($scope) {
			$scope.bind = 'bind';
			$scope.bindHtml = 'link to <a href="http://www.google.com/">google</a>.';
		}]);
</script>
</html>