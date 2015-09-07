<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html data-ng-app="myApp" data-ng-strict-di>
<head>
<meta charset="UTF-8">
<title>form basic</title>
<script src="/html-example/javascript/angular-1.4.4/angular.min.js"></script>
</head>
<body data-ng-controller="MyController">
	<form name="myForm" novalidate="novalidate">
		text(minlength:{{minlengthText}}; maxlength:{{maxlengthText}}) : <input type="text" name="text" data-ng-model="criteria.text" 
			data-ng-required="true" data-ng-minlength="minlengthText" data-ng-maxlength="maxlengthText" data-ng-trim="true">
		<br>
		<div data-ng-show="myForm.text.$error.required">required</div>
		<div data-ng-show="myForm.text.$error.minlength">minlength</div>
		<div data-ng-show="myForm.text.$error.maxlength">maxlength</div>
		<input type="submit" value="submit" data-ng-click="submit(myForm)" />
	</form>
	<hr>
</body>
<script>
	var myApp = angular.module('myApp', [])
		.controller('MyController', ['$scope', function($scope) {
			$scope.minlengthText = 3;
			$scope.maxlengthText = 5;
			$scope.submit = function(myForm) {
				if (myForm.$valid) {
					alert("valid");
				}
				if (myForm.$invalid) {
					alert("invalid");
				}
			}
		}]);
</script>
</html>