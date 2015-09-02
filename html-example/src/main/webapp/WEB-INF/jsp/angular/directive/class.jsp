<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html data-ng-app="myApp" data-ng-strict-di>
<head>
<meta charset="UTF-8">
<title>directive class</title>
<style type="text/css">
.strike {
    text-decoration: line-through;
}
.bold {
    font-weight: bold;
}
.baseClass {
	transition:all cubic-bezier(0,0,1,1) 0.5s;
}
.baseClass.animationClass {
	color: red;
	font-size:3em;
}
.odd {
  color: red;
}
.even {
  color: blue;
}
</style>
<script src="/html-example/javascript/angular-1.4.4/angular.min.js"></script>
</head>
<body data-ng-controller="MyController">
	<p data-ng-class="{strike : style_1_1, bold : style_1_2}">using object</p>
	<label>
		<input type="checkbox" data-ng-model="style_1_1"> apply "strike" class
	</label>
	<br>
	<label>
		<input type="checkbox" data-ng-model="style_1_2"> apply "bold" class
	</label>
	<hr>
	<p data-ng-class="style_2_1">using string</p>
	<input type="text" data-ng-model="style_2_1" placeholder="strike bold">
	<hr>
	<p data-ng-class="[style_3_1, style_3_2]">using string array</p>
	<input data-ng-model="style_3_1" placeholder="strike bold">
	<br>
	<input data-ng-model="style_3_2" placeholder="strike bold">
	<hr>
	<p data-ng-class="[style_4_1, {bold : style_4_2}]">using mixing</p>
	<input data-ng-model="style_4_1" placeholder="strike bold">
	<br>
	<label>
		<input type="checkbox" data-ng-model="style_4_2"> apply "bold" class
	</label>
	<hr>
	<input type="button" value="start" data-ng-click="addAnimationClass()">
	<input type="button" value="reset" data-ng-click="removeAnimationClass()">
	<br>
	<span class="baseClass" data-ng-class="animation">animation</span>
	<hr>
	class-odd & class-even
	<ol>
		<li data-ng-repeat="element in array">
			<span data-ng-class-odd="'odd'" data-ng-class-even="'even'"> {{element}} </span>
		</li>
	</ol>
</body>
<script>
	var myApp = angular.module('myApp', [])
		.controller('MyController', ['$scope', function($scope) {
			$scope.array = ['AAA', 'BBB', 'CCC', 'DDD', 'EEE'];
			$scope.addAnimationClass = function() {
				$scope.animation = 'animationClass';
			}
			$scope.removeAnimationClass = function() {
				$scope.animation = '';
			}
		}]);
</script>
</html>