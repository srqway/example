<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html data-ng-app="myApp" data-ng-strict-di>
<head>
<meta charset="UTF-8">
<title>directive bind</title>
<script src="/html-example/javascript/angular-1.4.4/angular.min.js"></script>
</head>
<body data-ng-controller="MyController">
	if : <input type="checkbox" data-ng-model="if"> / <span data-ng-if="if">This is removed when the checkbox is unchecked.</span>
	<br>
	pluralize : 
	<input type="text" name="pluralize" data-ng-model="pluralize"> / 
	<span count="pluralize" offset=2 when="{
		'0': 'no element.',
		'1': '{{pluralElementA}}',
		'2': '{{pluralElementA}} {{pluralElementB}}',
		'one': '{{pluralElementA}} {{pluralElementB}} and one other element',
		'other': '{{pluralElementA}}, {{pluralElementB}} and {} other elements'
	}" />
	<br>
	repeat : 
	<table>
		<tr>
			<th>$index</th>
			<th>$first</th>
			<th>$middle</th>
			<th>$last</th>
			<th>$even</th>
			<th>$odd</th>
		<tr>
		<tr data-ng-repeat="element in repeat">
			<td>{{$index}}</td>
			<td>{{$first}}</td>
			<td>{{$middle}}</td>
			<td>{{$last}}</td>
			<td>{{$even}}</td>
			<td>{{$odd}}</td>
		</tr>
	</table>
	<br>
	repeat with duplicate items : 
	<div data-ng-repeat="element in repeatDuplicate track by $index">
		{{element}}
	</div>
	<br>
	repeat-start and repeat-end : 
	<header data-ng-repeat-start="element in repeat">
		start {{element.id}}
	</header>
	<div>
		content {{element.name}}
	</div>
	<footer data-ng-repeat-end>
		end {{element.age}}
	</footer>
</body>
<script>
	var myApp = angular.module('myApp', [])
		.controller('MyController', ['$scope', function($scope) {
			$scope.pluralElementA = 'pluralize A';
			$scope.pluralElementB = 'pluralize B';
			$scope.repeat = [
				{id : 0, name : 'name A', age : 100},
				{id : 1, name : 'name B', age : 101},
				{id : 2, name : 'name C', age : 102},
				{id : 3, name : 'name D', age : 103},
				{id : 4, name : 'name E', age : 104}
			];
			$scope.repeatDuplicate = [0, 1, 1, 2, 3];
		}]);
</script>
</html>