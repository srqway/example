<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bootstrap Input Group</title>
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/bootstrap-theme.min.css">
<script src="/html-example/javascript/jquery-2.1.4/jquery-2.1.4.min.js"></script>
<script
	src="/html-example/javascript/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>
</head>
<body>
	<h2>basic</h2>
	<div class="btn-group btn-group-xs">
		<a href="javascript:void(0)" class="btn btn-primary">button 0</a> <a
			href="javascript:void(0)" class="btn btn-primary">button 1</a> <a
			href="javascript:void(0)" class="btn btn-primary">button 2</a>
	</div>
	<div class="btn-group btn-group-sm">
		<a href="javascript:void(0)" class="btn btn-primary">button 0</a> <a
			href="javascript:void(0)" class="btn btn-primary">button 1</a> <a
			href="javascript:void(0)" class="btn btn-primary">button 2</a>
	</div>
	<div class="btn-group">
		<a href="javascript:void(0)" class="btn btn-primary">button 0</a> <a
			href="javascript:void(0)" class="btn btn-primary">button 1</a> <a
			href="javascript:void(0)" class="btn btn-primary">button 2</a>
	</div>
	<div class="btn-group btn-group-lg">
		<a href="javascript:void(0)" class="btn btn-primary">button 0</a> <a
			href="javascript:void(0)" class="btn btn-primary">button 1</a> <a
			href="javascript:void(0)" class="btn btn-primary">button 2</a>
	</div>
	<hr>
	<h2>vertical</h2>
	<div class="btn-group-vertical btn-group-xs">
		<a href="javascript:void(0)" class="btn btn-primary">button 0</a> <a
			href="javascript:void(0)" class="btn btn-primary">button 1</a> <a
			href="javascript:void(0)" class="btn btn-primary">button 2</a>
	</div>
	<div class="btn-group-vertical btn-group-sm">
		<a href="javascript:void(0)" class="btn btn-primary">button 0</a> <a
			href="javascript:void(0)" class="btn btn-primary">button 1</a> <a
			href="javascript:void(0)" class="btn btn-primary">button 2</a>
	</div>
	<div class="btn-group-vertical">
		<a href="javascript:void(0)" class="btn btn-primary">button 0</a> <a
			href="javascript:void(0)" class="btn btn-primary">button 1</a> <a
			href="javascript:void(0)" class="btn btn-primary">button 2</a>
	</div>
	<div class="btn-group-vertical btn-group-lg">
		<a href="javascript:void(0)" class="btn btn-primary">button 0</a> <a
			href="javascript:void(0)" class="btn btn-primary">button 1</a> <a
			href="javascript:void(0)" class="btn btn-primary">button 2</a>
	</div>
	<hr>
	<h2>justified</h2>
	<div class="btn-group btn-group-justified btn-group-xs">
		<a href="javascript:void(0)" class="btn btn-primary">button 0</a> <a
			href="javascript:void(0)" class="btn btn-primary">button 1</a> <a
			href="javascript:void(0)" class="btn btn-primary">button 2</a>
	</div>
	<br>
	<div class="btn-group btn-group-justified btn-group-sm">
		<a href="javascript:void(0)" class="btn btn-primary">button 0</a> <a
			href="javascript:void(0)" class="btn btn-primary">button 1</a> <a
			href="javascript:void(0)" class="btn btn-primary">button 2</a>
	</div>
	<br>
	<div class="btn-group btn-group-justified">
		<a href="javascript:void(0)" class="btn btn-primary">button 0</a> <a
			href="javascript:void(0)" class="btn btn-primary">button 1</a> <a
			href="javascript:void(0)" class="btn btn-primary">button 2</a>
	</div>
	<br>
	<div class="btn-group btn-group-justified btn-group-lg">
		<a href="javascript:void(0)" class="btn btn-primary">button 0</a> <a
			href="javascript:void(0)" class="btn btn-primary">button 1</a> <a
			href="javascript:void(0)" class="btn btn-primary">button 2</a>
	</div>
	<hr>
	<h2>dropdown menus</h2>
	<div class="btn-group btn-group-xs">
		<a href="javascript:void(0)" class="btn btn-primary">button 0</a> <a
			href="javascript:void(0)" class="btn btn-primary">button 1</a>
		<div class="btn-group btn-group-xs">
			<button type="button" class="btn btn-primary dropdown-toggle"
				data-toggle="dropdown">
				button 2 <span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu">
				<li><a href="#" class="btn btn-xs btn-success">button 2-1</a></li>
				<li><a href="#" class="btn btn-xs btn-success">button 2-2</a></li>
			</ul>
		</div>
	</div>
	<div class="btn-group btn-group-sm">
		<a href="javascript:void(0)" class="btn btn-primary">button 0</a> <a
			href="javascript:void(0)" class="btn btn-primary">button 1</a>
		<div class="btn-group btn-group-sm">
			<button type="button" class="btn btn-primary dropdown-toggle"
				data-toggle="dropdown">
				button 2 <span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu">
				<li><a href="#" class="btn btn-sm btn-success">button 2-1</a></li>
				<li><a href="#" class="btn btn-sm btn-success">button 2-2</a></li>
			</ul>
		</div>
	</div>
	<div class="btn-group">
		<a href="javascript:void(0)" class="btn btn-primary">button 0</a> <a
			href="javascript:void(0)" class="btn btn-primary">button 1</a>
		<div class="btn-group">
			<button type="button" class="btn btn-primary dropdown-toggle"
				data-toggle="dropdown">
				button 2 <span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu">
				<li><a href="#" class="btn btn-success">button 2-1</a></li>
				<li><a href="#" class="btn btn-success">button 2-2</a></li>
			</ul>
		</div>
	</div>
	<div class="btn-group btn-group-lg">
		<a href="javascript:void(0)" class="btn btn-primary">button 0</a> <a
			href="javascript:void(0)" class="btn btn-primary">button 1</a>
		<div class="btn-group btn-group-lg">
			<button type="button" class="btn btn-primary dropdown-toggle"
				data-toggle="dropdown">
				button 2 <span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu">
				<li><a href="#" class="btn btn-lg btn-success">button 2-1</a></li>
				<li><a href="#" class="btn btn-lg btn-success">button 2-2</a></li>
			</ul>
		</div>
	</div>
	<hr>
	<h2>split dropdown menus</h2>
	<div class="btn-group btn-group-xs">
		<a href="javascript:void(0)" class="btn btn-primary">button 0</a> <a
			href="javascript:void(0)" class="btn btn-primary">button 1</a>
		<div class="btn-group btn-group-xs">
			<button type="button" class="btn btn-primary">button 2</button>
			<button type="button" class="btn btn-primary dropdown-toggle"
				data-toggle="dropdown">
				<span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu">
				<li><a href="#" class="btn btn-xs btn-success">button 2-1</a></li>
				<li><a href="#" class="btn btn-xs btn-success">button 2-2</a></li>
			</ul>
		</div>
	</div>
	<div class="btn-group btn-group-sm">
		<a href="javascript:void(0)" class="btn btn-primary">button 0</a> <a
			href="javascript:void(0)" class="btn btn-primary">button 1</a>
		<div class="btn-group btn-group-sm">
			<button type="button" class="btn btn-primary">button 2</button>
			<button type="button" class="btn btn-primary dropdown-toggle"
				data-toggle="dropdown">
				<span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu">
				<li><a href="#" class="btn btn-sm btn-success">button 2-1</a></li>
				<li><a href="#" class="btn btn-sm btn-success">button 2-2</a></li>
			</ul>
		</div>
	</div>
	<div class="btn-group">
		<a href="javascript:void(0)" class="btn btn-primary">button 0</a> <a
			href="javascript:void(0)" class="btn btn-primary">button 1</a>
		<div class="btn-group">
			<button type="button" class="btn btn-primary">button 2</button>
			<button type="button" class="btn btn-primary dropdown-toggle"
				data-toggle="dropdown">
				<span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu">
				<li><a href="#" class="btn btn-success">button 2-1</a></li>
				<li><a href="#" class="btn btn-success">button 2-2</a></li>
			</ul>
		</div>
	</div>
	<div class="btn-group btn-group-lg">
		<a href="javascript:void(0)" class="btn btn-primary">button 0</a> <a
			href="javascript:void(0)" class="btn btn-primary">button 1</a>
		<div class="btn-group btn-group-lg">
			<button type="button" class="btn btn-primary">button 2</button>
			<button type="button" class="btn btn-primary dropdown-toggle"
				data-toggle="dropdown">
				<span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu">
				<li><a href="#" class="btn btn-lg btn-success">button 2-1</a></li>
				<li><a href="#" class="btn btn-lg btn-success">button 2-2</a></li>
			</ul>
		</div>
	</div>
	<hr>
</body>
</html>