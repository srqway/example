<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>controller</title>
<script src="/html-example/javascript/angular-1.4.4/angular.min.js"></script>
</head>
<body data-ng-app="ngApp" data-ng-controller="controller">
	<input type="text" data-ng-model="ngModel"> {{getNgModel()}}
	<hr> 
</body>
<script>
	var ngApp = angular.module('ngApp', []);
	ngApp.controller('controller', function($scope) {
		$scope.ngModel = "ngModel";
	    $scope.getNgModel = function() {
	        return $scope.ngModel;
	    };
	});
</script>
</html>