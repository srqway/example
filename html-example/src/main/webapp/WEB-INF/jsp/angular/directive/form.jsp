<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html data-ng-app="myApp" data-ng-strict-di>
<head>
<meta charset="UTF-8">
<title>directive form</title>
<script src="/html-example/javascript/angular-1.4.4/angular.min.js"></script>
</head>
<body data-ng-controller="MyController">
	<form>
		number(minlength:{{minNumber}}; maxlength:{{maxNumber}}) : <input type="number" name="number" min = "{{minNumber}}" 
			max = {{maxNumber}} data-ng-model="criteria.number" data-ng-required="true" data-ng-trim="true">
		<br>
		text(minlength:{{minlengthText}}; maxlength:{{maxlengthText}}) : <input type="text" name="text" data-ng-model="criteria.text" 
			data-ng-required="true" data-ng-minlength="minlengthText" data-ng-maxlength="maxlengthText" data-ng-trim="true">
		<br>
		email : <input type="email" name="email" data-ng-model="criteria.email" data-ng-required="true">
		<br>
		url : <input type="url" name="url" data-ng-model="criteria.url" data-ng-required="true">
		<br>
		week(min:{{minWeek}}; max:{{maxWeek}}) : <input type="week" name="week" placeholder="yyyy-W##" min="{{minWeek}}" max="{{maxWeek}}" 
			data-ng-model="criteria.week" data-ng-min="minWeek" data-ng-max="maxWeek" data-ng-required="true">
		<br>
		month(min:{{minMonth}}; max:{{maxMonth}}) : <input type="month" name="month" placeholder="yyyy-MM" min="{{minMonth}}" max="{{maxMonth}}" 
			data-ng-model="criteria.month" data-ng-min="minMonth" data-ng-max="maxMonth" data-ng-required="true">
		<br>
		date(min:{{minDate}}; max:{{maxDate}}) : <input type="date" name="date" placeholder="yyyy-MM-dd" min="{{minDate}}" 
			max="{{maxDate}}" data-ng-model="criteria.date" data-ng-min="minDate" data-ng-max="maxDate" data-ng-required="true">
		<br>
		time(min:{{minTime}}; max:{{maxTime}}): <input type="time" name="time" placeholder="HH:mm:ss" min="{{minTime}}" 
			max="{{maxTime}}" data-ng-model="criteria.time" data-ng-min="minTime" data-ng-max="maxTime" data-ng-required="true">
		<br>
		datetime-local(min:{{minDatetimeLocal}}; max:{{maxDatetimeLocal}}) : <input type="datetime-local" name="datetimeLocal"
			placeholder="yyyy-MM-ddTHH:mm:ss" min="{{minDatetimeLocal}}" max="{{maxDatetimeLocal}}" data-ng-model="criteria.datetimeLocal"
			data-ng-min="minDatetimeLocal"  data-ng-max="maxDatetimeLocal" data-ng-required="true">
		<br>
		checkbox : <input type="checkbox" name="checkbox" data-ng-model="criteria.checkbox" 
			data-ng-true-value="'T'" data-ng-false-value="'F'" data-ng-change="change()">
		<br>
		radio :
			<input type="radio" name="radio" value="first" data-ng-model="criteria.radio" data-ng-change="change()">
			<input type="radio" name="radio" value="second" data-ng-model="criteria.radio" data-ng-change="change()">
		<br>
		<input type="submit" value="submit" data-ng-click="submit()" />
	</form>
	{{criteria | json}}
</body>
<script>
	var myApp = angular.module('myApp', [])
		.controller('MyController', ['$scope', '$filter', function($scope, $filter) {
			$scope.minNumber = 3;
			$scope.maxNumber = 5;
			$scope.minlengthText = 3;
			$scope.maxlengthText = 5;
			$scope.minWeek = '2015-W08';
			$scope.maxWeek = '2015-W28';
			$scope.minMonth = '2015-01';
			$scope.maxMonth = '2015-12';
			$scope.minDate = '2015-01-01';
			$scope.maxDate = '2015-12-31';
			$scope.minTime = '18:00:00';
			$scope.maxTime = '22:00:00';
			$scope.minDatetimeLocal = '2015-01-01T00:00:00';
			$scope.maxDatetimeLocal = '2016-01-01T00:00:00';
			
			$scope.change = function() {
				alert("change.");
			}
			$scope.submit = function() {
				alert($filter('json')($scope.criteria, 0));
			};
		}]);
</script>
</html>