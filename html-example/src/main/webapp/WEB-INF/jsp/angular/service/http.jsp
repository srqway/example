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
    integerValue : <input type="number" data-ng-model="criteria.integerValue" /><br />
	floatValue : <input type="number" step="0.1" data-ng-model="criteria.floatValue" /><br />
	dateValue : <input type="date" data-ng-model="criteria.dateValue" /><br />
	stringValue : <input type="text" data-ng-model="criteria.stringValue" /><br />
	enumerationValue : <input type="text" data-ng-model="criteria.enumerationValue" /><br />
	<input type="button" value="GET" data-ng-click="get()">
	<hr>
	{{criteria | json}}
	<hr>
	{{status}} / {{result | json}}
</body>
<script>
	var myApp = angular.module('myApp', [])
	.controller('MyController', ['$scope', '$http', '$filter', function($scope, $http, $filter) {
		var toDate = function(value) {
			var R_ISO8601_STR = /^(\d{4})-?(\d\d)-?(\d\d)(?:T(\d\d)(?::?(\d\d)(?::?(\d\d)(?:\.(\d+))?)?)?(Z|([+-])(\d\d):?(\d\d))?)?$/;
			if (typeof value === 'string' && value.match(R_ISO8601_STR)) {
				value = $filter('date')(value, 'medium');
			}
		    return new Date(value);
		}


		alert(toDate("2013-02-03T22:12:33"));
		
		$scope.criteria = {
			integerValue : 1,
			floatValue : 2.2,
			dateValue : new Date(),
			stringValue : 'this is a string',
			enumerationValue : 'ENUM_2'
		}

		$scope.get = function() {
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
	}]);
</script>
</html>