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
	<form action="basic" novalidate="novalidate">
	    data.integerValue : <input type="number" name="data.integerValue" data-ng-model="criteria.data.integerValue" /><br />
		data.floatValue : <input type="number" name="data.floatValue" data-ng-model="criteria.data.floatValue" /><br />
		data.dateValue : <input type="date" name="data.dateValue" data-ng-model="criteria.data.dateValue" /><br />
		data.stringValue : <input type="text" name="data.stringValue" data-ng-model="criteria.data.stringValue" /><br />
		data.enumerationValue : <input type="text" name="data.enumerationValue" data-ng-model="criteria.data.enumerationValue" /><br />
	    <input type="reset" value="reset" />
		<input type="submit" value="submit" />
	</form>
	<hr>
	{{criteria | json}}
</body>
<script>
	alert('${criteria}');
	
	var myApp = angular.module('myApp', [])
		.controller('MyController', ['$scope', function($scope) {
			$scope.criteria = JSON.parse('${criteria}');
		}]);
</script>
</html>