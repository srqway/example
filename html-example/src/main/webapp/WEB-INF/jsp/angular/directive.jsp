<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>directive</title>
<script src="/html-example/javascript/angular-1.4.4/angular.min.js"></script>
</head>
<body data-ng-app="ngApp" data-ng-controller="controller">
	data-ng-model : <input type="text" data-ng-model="myInput">
	{{myInput}}
	<hr> 
	data-ng-repeat :
	<table>
		<tr data-ng-repeat="x in arr">
			<td>{{ $index }}</td>
			<td data-ng-if="$odd" style="background-color: red;">{{ x.a }}</td>
			<td data-ng-if="$even" style="background-color:green;">{{ x.a }}</td>
			<td data-ng-if="$odd" style="background-color: red;">{{ x.b }}</td>
			<td data-ng-if="$even" style="background-color:green;">{{ x.b }}</td>
		</tr>
	</table>
	<hr>
	data-ng-disabled : 
	<div>
		<button data-ng-disabled="myCheckbox">{{ myCheckbox }}</button>
		<input type="checkbox" data-ng-model="myCheckbox" /> disable button 
		
	</div>
	<hr>
	data-ng-show : 
	<div>
		<p data-ng-show="myCheckbox_1">{{ myCheckbox_1 }}</p>
		<input type="checkbox" data-ng-model="myCheckbox_1" /> show paragraph 
		
	</div>
	<hr>
	data-ng-hide : 
	<div>
		<p data-ng-hide="myCheckbox_2">{{ myCheckbox_2 }}</p>
		<input type="checkbox" data-ng-model="myCheckbox_2" /> hide paragraph 
		
	</div>
	<hr>
	data-ng-click :
	<button data-ng-click="count = count + 1">{{ count }}</button>
	<br>
	<button data-ng-click="click()">click</button><span data-ng-hide="hide">hide?</span>
	<hr>
	<form name="myForm" novalidate>
		<p>
			Username:<br> <input type="text" name="user" data-ng-model="user"
				required> <span style="color: red"
				data-ng-show="myForm.user.$dirty && myForm.user.$invalid"> <span
				data-ng-show="myForm.user.$error.required">Username is required.</span>
			</span>
		</p>
		<p>
			Email:<br> <input type="email" name="email" data-ng-model="email"
				required> <span style="color: red"
				data-ng-show="myForm.email.$dirty && myForm.email.$invalid"> <span
				data-ng-show="myForm.email.$error.required">Email is required.</span> <span
				data-ng-show="myForm.email.$error.email">Invalid email address.</span>
			</span>
		</p>
		<p>
			<input type="submit"
				data-ng-disabled="myForm.user.$dirty && myForm.user.$invalid ||  
myForm.email.$dirty && myForm.email.$invalid">
		</p>

	</form>
	<hr>
</body>
<script>
	var ngApp = angular.module('ngApp', []);
	ngApp.controller('controller', function($scope) {
		$scope.myInput='myInput';
		$scope.arr=[{a:111,b:'one'},{a:222,b:'two'},{a:333,b:'three'}];
		$scope.myCheckbox=true;
		$scope.myCheckbox_1=false;
		$scope.myCheckbox_2=false;
		$scope.count = 0;
		$scope.hide = false;
	    $scope.user = 'thank';
	    $scope.email = 'thank@gmail.com';
	    $scope.click = function() {
	    	$scope.hide = !$scope.hide;
	    };
	});
</script>
</html>