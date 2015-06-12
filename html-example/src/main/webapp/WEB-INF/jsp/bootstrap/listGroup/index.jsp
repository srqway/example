<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bootstrap List Group</title>
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/bootstrap-theme.min.css">
<script src="/html-example/javascript/jquery-2.1.4/jquery-2.1.4.min.js"></script>
<script
	src="/html-example/javascript/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>
</head>
<body>
	<h2>Simple</h2>
	<div class="container">
		<ul class="list-group">
		  <li class="list-group-item">item 1</li>
		  <li class="list-group-item active">item 2</li>
		  <li class="list-group-item disabled">item 3</li>
		</ul>
	</div>
	<br>

	<h2>Badge</h2>
	<div class="container">
		<ul class="list-group">
			<li class="list-group-item disabled">
				badge 1<span class="badge">14</span>
			</li>
			<li class="list-group-item">
				badge 2
			</li>
			<li class="list-group-item active">
				badge 3<span class="badge">32</span>
			</li>
		</ul>
	</div>
	<br>

	<h2>Contextual</h2>
	<div class="container">
		<div class="list-group">
			<a href="#" class="list-group-item list-group-item-success">success</a>
			<a href="#" class="list-group-item list-group-item-info">info</a>
			<a href="#" class="list-group-item list-group-item-warning">warning</a>
			<a href="#" class="list-group-item list-group-item-danger">danger</a>
		</div>
	</div>
	<br>

	<h2>Custom Content</h2>
	<div class="container">
		<div class="list-group">
			<a href="#" class="list-group-item active">
				<h4 class="list-group-item-heading">This is heading 1</h4>
				<p class="list-group-item-text">
					This is text 1.<br>
					This is text 1.<br>
					This is text 1.<br>
				</p>
			</a>
			<a href="#" class="list-group-item">
				<h4 class="list-group-item-heading">This is heading 2</h4>
				<p class="list-group-item-text">
					This is text 2.<br>
					This is text 2.<br>
					This is text 2.<br>
				</p>
			</a>
			<a href="#" class="list-group-item">
				<h4 class="list-group-item-heading">This is heading 3</h4>
				<p class="list-group-item-text">
					This is text 3.<br>
					This is text 3.<br>
					This is text 3.<br>
				</p>
			</a>
		</div>
	</div>
	<br>
	
	
</body>
</html>