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
    integerValue : <input type="number" data-ng-model="criteria.data.integerValue" /><br />
<!-- 	floatValue : <input type="number" step="0.1" data-ng-model="criteria.floatValue" /><br /> -->
<!-- 	dateValue : <input type="date" data-ng-model="criteria.dateValue" /><br /> -->
<!-- 	stringValue : <input type="text" data-ng-model="criteria.stringValue" /><br /> -->
<!-- 	enumerationValue : <input type="text" data-ng-model="criteria.enumerationValue" /><br /> -->
	<input type="button" value="GET" data-ng-click="get()">
	<hr>
	{{criteria | json}}
	<hr>
	{{status}} / {{data}}
</body>
<script>
	var myApp = angular.module('myApp', [])
	.controller('MyController', ['$scope', '$http', function($scope, $http) {
// 		$scope.criteria = {};
// 		$scope.criteria.data = {};
// 		$scope.criteria.data.integerValue = 1;

		
// 		$scope.criteria.floatValue = 2.2;

// 		$scope.criteria.dateValue = '2015-03-05';
// 		$scope.criteria.stringValue = 'this is a string';
// 		$scope.criteria.enumerationValue = 'ENUM_2';
;
		$scope.get = function() {
			var config = {
				method : 'GET',
				url : 'httpGet',
// 				headers : {
// 					'Content-Type': 'application/json'
// 				},
				data : $scope.criteria
			};

			$http(config).then(function(response) {
				$scope.status = response.status;
				$scope.data = response.data;
			}, function(response) {
				$scope.data = response.data || "Request failed";
				$scope.status = response.status;
	      });
	    };
	}]);
</script>
</html>