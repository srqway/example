<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html data-ng-app="myApp" data-ng-strict-di>
<head>
<meta charset="UTF-8">
<title>directive model</title>
<style type="text/css">
input.css.ng-pristine {
    color:white;
    background: black;
}
input.css.ng-valid.ng-dirty {
    color:white;
    background: green;
}
input.css.ng-invalid.ng-dirty {
    color:white;
    background: red;
}
/* input.css.ng-touched { */
/* } */
/* input.css.ng-untouched { */
/* } */
/* input.css.ng-pending { */
/* } */
</style>
<script src="/html-example/javascript/angular-1.4.4/angular.min.js"></script>
</head>
<body data-ng-controller="MyController">
	css (minlength:{{minlengthText}}; maxlength:{{maxlengthText}}) : <input type="text" name="text" class="css" data-ng-model="criteria.text" 
		data-ng-required="true" data-ng-minlength="minlengthText" data-ng-maxlength="maxlengthText" data-ng-trim="true">
	<hr>
	model options getterSetter : <input type="text" data-ng-model="getterSetterModel" data-ng-model-options="{ getterSetter: true }" /> {{getterSetterModel()}}
	<br>
	model options updateOn (blur) : <input type="text" data-ng-model="updateOnModel" data-ng-model-options="{ updateOn: 'blur' }" /> {{updateOnModel}}
	<br>
	model options debounce (1000) : <input type="text" data-ng-model="debounceModel" data-ng-model-options="{ debounce: 1000 }" /> {{debounceModel}}
	<br>
	model options allowInvalid (minlength:{{minlengthText}}; maxlength:{{maxlengthText}}) : <input type="text" data-ng-model="allowInvalidModel" 
		data-ng-model-options="{ allowInvalid: true }" data-ng-minlength="minlengthText" data-ng-maxlength="maxlengthText"/> {{allowInvalidModel}}
	<br>
</body>
<script>
	var myApp = angular.module('myApp', [])
		.controller('MyController', ['$scope', function($scope) {
			$scope.minlengthText = 3;
			$scope.maxlengthText = 5;
			var _getterSetterModel;
			$scope.getterSetterModel = function(getterSetterModel) {
				return arguments.length ? (_getterSetterModel = getterSetterModel) : _getterSetterModel;
			}
		}]);
</script>
</html>