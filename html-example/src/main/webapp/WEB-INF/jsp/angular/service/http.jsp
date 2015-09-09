<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html data-ng-app="myApp" data-ng-strict-di>
<head>
<meta charset="UTF-8">
<title>service http</title>
<script src="/html-example/javascript/angular-1.4.4/angular.min.js"></script>
</head>
<body data-ng-controller="MyController">
	<form name="myForm">
	    integerValue : <input type="number" name="integerValue" data-ng-model="criteria.integerValue" /> {{myForm.integerValue.$valid}}<br />
		floatValue : <input type="number" name="floatValue" step="0.1" data-ng-model="criteria.floatValue" /> {{myForm.floatValue.$valid}}<br />
		dateValue : <input type="text" name="dateValue" pattern="\d{4}-\d{2}-\d{2}" data-ng-model="criteria.dateValue" 
			data-ng-pattern="\d{4}-\d{2}-\d{2}" /> {{myForm.dateValue.$valid}}<br />
		stringValue : <input type="text" name="stringValue" data-ng-model="criteria.stringValue" /> {{myForm.stringValue.$valid}}<br />
		enumerationValue : 
		<select name="enumerationValue" data-ng-model="criteria.enumerationValue">
			<option value="ENUM_1">ENUM_1</option>
	  		<option value="ENUM_2">ENUM_2</option>
	  		<option value="ENUM_3">ENUM_3</option>
		</select> {{myForm.enumerationValue.$valid}}<br />
	</form>
	<input type="button" value="GET" data-ng-click="get()">
	<input type="button" value="POST" data-ng-click="post()">
	<hr>
	{{criteria | json}}
	<hr>
	{{method}} : {{status}} / {{result | json}}
</body>
<script>
	var myApp = angular.module('myApp', [])
	.controller('MyController', ['$scope', '$http', '$filter', function($scope, $http, $filter) {
		$scope.criteria = {
			integerValue : 1,
			floatValue : 2.2,
			dateValue : '2015-03-05',
			stringValue : 'this is a string',
			enumerationValue : 'ENUM_2'
		}

		$scope.get = function() {
			$scope.method = 'GET';
			var config = {
				method : 'GET',
				url : 'httpGet',
				params : $scope.criteria
			};

			$http(config).then(function(response) {
				$scope.status = response.status;
				$scope.result = response.data;
			}, function(response) {
				$scope.status = response.status;
			});
		};
		
		$scope.post = function() {
			$scope.method = 'POST';
			var config = {
				method : 'POST',
				url : 'httpPost',
				headers: {'Content-Type': 'application/json'},
				data : $scope.criteria
			};

			$http(config).then(function(response) {
				$scope.status = response.status;
				$scope.result = response.data;
			}, function(response) {
				$scope.status = response.status;
			});
		};
	}]);
</script>
</html>