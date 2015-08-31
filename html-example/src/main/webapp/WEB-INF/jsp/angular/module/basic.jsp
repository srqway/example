<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html data-ng-app="myApp" data-ng-strict-di>
<head>
<meta charset="UTF-8">
<title>controller</title>
<script src="/html-example/javascript/angular-1.4.4/angular.min.js"></script>
</head>
<body data-ng-controller="MyController">
	<h2>{{appName}}</h2>
	constant field : {{constant.field}}
	<br>
	constant method : {{constant.method()}}
	<hr> 
	value field : {{value.field}}
	<br>
	value method : {{value.method()}}
	<hr> 
	service : {{myService.cascade()}}
	<br>
	factory : {{myFactory.cascade()}}
	<br>
	provider : {{myProvider.cascade()}}
	<hr> 
	filter : {{'string' | myFilter}}
	<br>
	<span data-my-directive></span>
	<br>
	<div class="animation">animation : not implement !</div>
	<hr>
</body>
<script>
	function MyService(constant, value) {
		this.cascade = function() {
			return JSON.stringify(constant) + JSON.stringify(value);
		}
	}
	
	function MyFactory(constant, value) {
		return new MyService(constant, value);
	}
	
	function MyProvider() {
		this.$get = ["constant", "value", function(constant, value) {
			return new MyService(constant, value);
		}];
	}
	
	function MyFilter() {
		return function(string) {
			return 'filter ' + string + '!';
		};
	}
	
	function MyDirective(constant, value) {
		return {
			restrict: 'A',
			link: function($scope, $element) { $element.text(JSON.stringify(constant) + JSON.stringify(value)); }
		}
	}
	
	function MyAnimation() {
		return {
			enter : function(element, done) {},
		    leave : function(element, done) {},
		    move : function(element, done) {},
		    addClass : function(element, className, done) {},
		    removeClass : function(element, className, done) {}
		  }
	}
		  
	angular.module('subModule', [])
		.constant('constant', {
			field: 'constant field',
			method: function() {
				return 'constant method';
			}
		})
		.value('value', {
			field: 'value field',
			method: function() {
				return 'value method';
			}
		})
		.service('myService', ["constant", "value", MyService])
		.factory('myFactory', ["constant", "value", MyFactory])
		.provider('myProvider', MyProvider)
		.filter('myFilter', MyFilter)
		.directive('myDirective', ["constant", "value", MyDirective])
		.animation('.animation', MyAnimation)
		.controller('MyController', ['$scope', 'constant', 'value', 'myService', 'myFactory', 'myProvider', function($scope, constant, value, myService, myFactory, myProvider) {
			$scope.constant = constant;
			$scope.value = value;
			$scope.myService = myService;
			$scope.myFactory = myFactory;
			$scope.myProvider = myProvider;
		}]);
	
// 	Controller, Directive, Filter and Animation

	var myApp = angular.module('myApp', ['subModule'])
		.run(['$rootScope', function($rootScope) {
			$rootScope.appName = "App Name";
		}]);
</script>
</html>