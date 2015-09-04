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
	init : 
	<br>
	<div data-ng-repeat="innerList in list" data-ng-init="outerIndex = $index">
		<div data-ng-repeat="value in innerList" data-ng-init="innerIndex = $index">
			<span class="example-init">list[{{outerIndex}}][{{innerIndex}}] = {{value}}</span>
		</div>
	</div>
	<hr>
	ng-bind : <span data-ng-bind="bind"></span>
	<br>
	ng-bind-html : <span data-ng-bind-html="bindHtml"></span>
	<br>
	ng-bind-template : <span data-ng-bind-template="{{bind}} & {{bindHtml}}!"></span>
	<hr>
	ng-non-bindable : <span data-ng-non-bindable>{{1 + 2}}</span>
	<hr>
	ng-style : <span data-ng-style="myStyle"> style </span>
	<hr>
	ng-switch : <br>
	<select data-ng-model="mySwitch" data-ng-options="switch for switch in switchs"></select>
	<div data-ng-switch data-on="mySwitch">
		<div data-ng-switch-when="switchA">switch a</div>
		<div data-ng-switch-when="switchB">switch b</div>
		<div data-ng-switch-default>switch default</div>
	</div>
	<hr/>

</body>
<script>
	var myApp = angular.module('myApp', ['ngSanitize'])
		.controller('MyController', ['$scope', function($scope) {
			$scope.bind = 'bind';
			$scope.bindHtml = 'link to <a href="http://www.google.com/">google</a>.';
			$scope.list = [['a', 'b'], ['c', 'd']];
			$scope.myStyle = {color:'red'};
			$scope.switchs = ['switchA', 'switchB', 'switchDefault'];
			$scope.mySwitch = $scope.switchs[1];
		}]);
</script>
</html>