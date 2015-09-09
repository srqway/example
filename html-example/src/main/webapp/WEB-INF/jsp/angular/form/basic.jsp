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
	<form name="myForm">
	    integerValue : <input type="number" name="integerValue" data-ng-model="criteria.integerValue" /> {{myForm.integerValue.$valid}}<br />
		floatValue : <input type="number" step="0.1" name="floatValue" data-ng-model="criteria.floatValue" /> {{myForm.floatValue.$valid}}<br />
		dateValue : <input type="text" name="dateValue" pattern="\d{4}-\d{2}-\d{2}" data-ng-model="criteria.dateValue" 
			data-ng-pattern="\d{4}-\d{2}-\d{2}" /> {{myForm.dateValue.$valid}}<br />
		stringValue : <input type="text" name="stringValue" data-ng-model="criteria.stringValue" /> {{myForm.stringValue.$valid}}<br />
		enumerationValue : 
		<select name="enumerationValue" data-ng-model="criteria.enumerationValue">
			<option value="ENUM_1">ENUM_1</option>
	  		<option value="ENUM_2">ENUM_2</option>
	  		<option value="ENUM_3">ENUM_3</option>
		</select> {{myForm.enumerationValue.$valid}}<br />
	    <input type="button" value="recover" data-ng-click="restore()" />
		<input type="button" value="save" data-ng-click="save()" />
	</form>
	<hr>
	criteria : {{criteria | json}}
</body>
<script>
	var myApp = angular.module('myApp', [])
		.controller('MyController', ['$scope', function($scope) {
			$scope.original = {};
			$scope.restore = function() {
				$scope.criteria = angular.copy($scope.original);
			};
			$scope.save = function() {
				$scope.original = angular.copy($scope.criteria);
			};
		}]);
</script>
</html>