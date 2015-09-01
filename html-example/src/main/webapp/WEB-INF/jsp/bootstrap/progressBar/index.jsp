<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bootstrap Progress Bar</title>
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/bootstrap-theme.min.css">
<script src="/html-example/javascript/jquery-2.1.4/jquery-2.1.4.min.js"></script>
<script
	src="/html-example/javascript/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>
</head>
<body>
	<h5>basic</h5>
	<div class="progress">
		<div class="progress-bar" style="width: 1%; min-width: 20px;">
			<span class="sr-only">1%</span>
		</div>
	</div>
	<hr>
	<h5>stripped</h5>
	<div class="progress progress-striped">
		<div class="progress-bar" style="width: 80%; min-width: 20px;">
			<span class="sr-only">80%</span>
		</div>
	</div>
	<hr>
	<h5>active stripped</h5>
	<div class="progress progress-striped active">
		<div class="progress-bar" style="width: 80%; min-width: 20px;">
			<span class="sr-only">80%</span>
		</div>
	</div>
	<hr>
	<h5>stacked</h5>
	<div class="progress">
	    <div class="progress-bar progress-bar-info" style="width: 35%">
	        <span class="sr-only">40% Complete (info)</span>
	    </div>
	    <div class="progress-bar progress-bar-success" style="width: 35%">
	        <span class="sr-only">30% Complete (success)</span>
	    </div>
	    <div class="progress-bar progress-bar-warning" style="width: 20%">
	        <span class="sr-only">20% Complete (warning)</span>
	    </div>
	    <div class="progress-bar progress-bar-danger" style="width: 10%">
	        <span class="sr-only">10% Complete (danger)</span>
	    </div>
	</div>
	<hr>
	<h5>color</h5>
	<div class="progress">
		<div class="progress-bar progress-bar-info" style="width: 20%">
			<span class="sr-only">20% Complete</span>
		</div>
	</div>
	<div class="progress">
		<div class="progress-bar progress-bar-success" style="width: 40%">
			<span class="sr-only">40% Complete</span>
		</div>
	</div>
	<div class="progress">
		<div class="progress-bar progress-bar-warning" style="width: 60%">
			<span class="sr-only">60% Complete</span>
		</div>
	</div>
	<div class="progress">
		<div class="progress-bar progress-bar-danger" style="width: 80%">
			<span class="sr-only">80% Complete</span>
		</div>
	</div>
	<hr>
	<h5>stripped color</h5>
    <div class="progress progress-striped">
        <div class="progress-bar progress-bar-info" style="width: 20%">
            <span class="sr-only">20% Complete</span>
        </div>
    </div>
    <div class="progress progress-striped">
        <div class="progress-bar progress-bar-success" style="width: 40%">
            <span class="sr-only">40% Complete</span>
        </div>
    </div>
    <div class="progress progress-striped">
        <div class="progress-bar progress-bar-warning" style="width: 60%">
            <span class="sr-only">60% Complete</span>
        </div>
    </div>
    <div class="progress progress-striped">
        <div class="progress-bar progress-bar-danger" style="width: 80%">
            <span class="sr-only">80% Complete</span>
        </div>
    </div>
	<hr>
	
	
</body>
</html>