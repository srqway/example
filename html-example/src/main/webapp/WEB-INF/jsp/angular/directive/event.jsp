<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html data-ng-app="myApp" data-ng-strict-di>
<head>
<meta charset="UTF-8">
<title>directive event</title>
<script src="/html-example/javascript/angular-1.4.4/angular.min.js"></script>
</head>
<body data-ng-controller="MyController">
	cloak : <span data-ng-cloak>{{ 'this will be hidden before rendered.' }}</span>
	<br>
	a : <a data-ng-href="{{a}}">link to google.</a>
	<br>
	blur : <input type="text" data-ng-model="blur" data-ng-blur="onBlur()">
	<br>
	change : <input type="text" data-ng-model="change" data-ng-change="onChange()">
	<br>
	click : <button data-ng-click="count = count + 1"> {{count}} </button>
	<br>
	copy : <input type="text" data-ng-model="copy" data-ng-copy="onCopy()">
	<br>
	cut : <input type="text" data-ng-model="cut" data-ng-cut="onCut()">
	<br>
	dblclick : <input type="text" data-ng-model="dblclick" data-ng-dblclick="onDblclick()">
	<br>
	focus : <input type="text" data-ng-model="focus" data-ng-focus="onFocus()">
	<br>
	disabled : <input type="checkbox" data-ng-model="disabled"> / relative checkbox : <input type="checkbox"  data-ng-disabled="disabled">
	<br>
	checked : <input type="checkbox" data-ng-model="checked"> / relative checkbox : <input type="checkbox"  data-ng-checked="checked">
	<br>
	hide : <input type="checkbox" data-ng-model="hide"> / relative checkbox : <input type="checkbox"  data-ng-hide="hide">
	<br>	
	if : <input type="checkbox" data-ng-model="if"> / <span data-ng-if="if">This is removed when the checkbox is unchecked.</span>
	<br>
</body>
<script>
	var myApp = angular.module('myApp', [])
		.controller('MyController', ['$scope', function($scope) {
			$scope.a = "http://www.google.com/";
			$scope.count = 0;
			$scope.onBlur = function() {
				alert("blur");
			}
			$scope.onChange = function() {
				alert("change");
			}
			$scope.onCopy = function() {
				alert("copy");
			}
			$scope.onCut = function() {
				alert("cut");
			}
			$scope.onDblclick = function() {
				alert("dblclick");
			}
			$scope.onFocus = function() {
				alert("focus");
			}
		}]);
</script>
</html>