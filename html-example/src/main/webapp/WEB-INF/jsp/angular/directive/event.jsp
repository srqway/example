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
	src : <br>
	<img data-ng-src="/html-example/image/{{image}}" />
	<br>
	blur : <input type="text" data-ng-model="blur" data-ng-blur="onBlur()">
	<br>
	change : <input type="text" data-ng-model="change" data-ng-change="onChange()">
	<br>
	click : <button data-ng-click="clickCount = clickCount + 1"> {{clickCount}} </button>
	<br>
	copy : <input type="text" data-ng-model="copy" data-ng-copy="onCopy()">
	<br>
	paste : <input type="text" data-ng-model="paste" data-ng-paste="onPaste()">
	<br>
	cut : <input type="text" data-ng-model="cut" data-ng-cut="onCut()">
	<br>
	dblclick : <input type="text" data-ng-model="dblclick" data-ng-dblclick="onDblclick()">
	<br>
	focus : <input type="text" data-ng-model="focus" data-ng-focus="onFocus()">
	<br>
	disabled : <input type="checkbox" data-ng-model="disabled"> / relative checkbox : <input type="checkbox"  data-ng-disabled="disabled">
	<br>
	readonly : <input type="checkbox" data-ng-model="readonly"> / relative checkbox : <input type="text"  data-ng-readonly="readonly">
	<br>
	checked : <input type="checkbox" data-ng-model="checked"> / relative checkbox : <input type="checkbox"  data-ng-checked="checked">
	<br>
	selected : <br>
	<input type="checkbox" data-ng-model="selected"> / relative checkbox : <input type="checkbox"  data-ng-selected="selected">
	<select>
		<option>not selected</option>
		<option data-ng-selected="selected">selected</option>
	</select>
	<br>
	show : <input type="checkbox" data-ng-model="show"> / relative checkbox : <input type="checkbox"  data-ng-show="show">
	<br>	
	hide : <input type="checkbox" data-ng-model="hide"> / relative checkbox : <input type="checkbox"  data-ng-hide="hide">
	<br>
	keydown : <input type="text" data-ng-model="keydown" data-ng-keydown="onKeydown($event)">
	<br>
	keypress : <input type="text" data-ng-model="keypress" data-ng-keydown="onKeypress($event)">
	<br>
	keyup : <input type="text" data-ng-model="keyup" data-ng-keydown="onKeyup($event)">
	<br>
	mousedown : <input type="text" data-ng-model="mousedown" data-ng-mousedown="onMousedown()">
	<br>
	mouseup : <input type="text" data-ng-model="mouseup" data-ng-mouseup="onMouseup()">
	<br>
	mouseenter : <input type="text" data-ng-model="mouseenter" data-ng-mouseenter="onMouseenter()">
	<br>
	mouseleave : <input type="text" data-ng-model="mouseleave" data-ng-mouseleave="onMouseleave()">
	<br>	
	mousemove : <input type="text" data-ng-model="mousemove" data-ng-mousemove="onMousemove()">
	<br>
	mouseover : <input type="text" data-ng-model="mouseover" data-ng-mouseover="onMouseover()">
	<br>	
</body>
<script>
	var myApp = angular.module('myApp', [])
		.controller('MyController', ['$scope', function($scope) {
			$scope.a = "http://www.google.com/";
			$scope.clickCount = 0;
			$scope.image = "talk.png";
			$scope.onBlur = function() {
				alert("blur");
			}
			$scope.onChange = function() {
				alert("change");
			}
			$scope.onCopy = function() {
				alert("copy");
			}
			$scope.onPaste = function() {
				alert("paste");
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
			$scope.onMousedown = function() {
				alert("mousedown");
			}
			$scope.onMouseenter = function() {
				alert("mouseenter");
			}
			$scope.onMouseleave = function() {
				alert("mouseleave");
			}
			$scope.onMousemove = function() {
				alert("mousemove");
			}
			$scope.onMouseover = function() {
				alert("mouseover");
			}
			$scope.onMouseup = function() {
				alert("mouseup");
			}
			$scope.onKeydown = function(event) {
				alert("keydown (altKey : " + event.altKey + "; keyCode : " + event.keyCode + ")");
			}
			$scope.onKeypress = function(event) {
				alert("keypress (altKey : " + event.altKey + "; keyCode : " + event.keyCode + ")");
			}
			$scope.onKeyup = function(event) {
				alert("keyup (altKey : " + event.altKey + "; keyCode : " + event.keyCode + ")");
			}
			
		}]);
</script>
</html>