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
	<form novalidate="novalidate">
	    integerValue : <input type="number" name="integerValue" data-ng-model="criteria.integerValue" /><br />
		floatValue : <input type="number" name="floatValue" data-ng-model="criteria.floatValue" /><br />
		dateValue : <input type="date" name="dateValue" data-ng-model="criteria.dateValue" /><br />
		stringValue : <input type="text" name="stringValue" data-ng-model="criteria.stringValue" /><br />
		enumerationValue : <input type="text" name="enumerationValue" data-ng-model="criteria.enumerationValue" /><br />
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