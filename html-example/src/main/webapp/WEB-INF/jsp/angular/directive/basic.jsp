<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html data-ng-app="myApp" data-ng-strict-di>
<head>
<meta charset="UTF-8">
<title>directive basic</title>
<script src="/html-example/javascript/angular-1.4.4/angular.min.js"></script>
</head>
<body data-ng-controller="MyController">
	template : <span data-template-directive></span>
	<br>
	template-url : <span data-template-url-directive></span>
	<br>
	isolate scope : <br>
	<span data-isolate-scope-directive data-info="one"></span>
	<br>
	<span data-isolate-scope-directive data-info="two"></span>
	<br>
	link : <input data-ng-model="format"> <span data-link-directive="format"></span>
	<br>
</body>
<script>
	var myApp = angular.module('myApp', [])
		.controller('MyController', ['$scope', function($scope) {
			$scope.templateModel = 'template model';
			$scope.one = 'model one';
			$scope.two = 'model two';
			$scope.format = 'MM/dd/yyyy hh:mm:ss a';
		}]).directive('templateDirective', function() {
			return {
				restrict: 'AEC',
				template: 'before {{templateModel}} after'
			}
		}).directive('templateUrlDirective', function() {
			return {
				restrict: 'AEC',
				templateUrl: 'include/templateUrl'
			};
		}).directive('isolateScopeDirective', function() {
			return {
				restrict: 'AEC',
				template: 'before {{isolateScopeModel}} after',
				scope: {
					isolateScopeModel: '=info'
				},
			};
		}).directive('linkDirective', ['$interval', 'dateFilter', function($interval, dateFilter) {
			function link(scope, element, attrs) {
				var format;
				var timeoutId;

				function updateTime() {
					element.text(dateFilter(new Date(), format));
				}

				scope.$watch(attrs.linkDirective, function(value) {
					format = value;
					updateTime();
				});

				timeoutId = $interval(function() {
					updateTime();
				}, 1000);
				
				element.on('$destroy', function() {
					$interval.cancel(timeoutId);
				});
			}

			return {
				link: link
			};
		}]);
</script>
</html>