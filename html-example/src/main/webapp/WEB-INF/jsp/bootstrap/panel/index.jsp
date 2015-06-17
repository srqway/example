<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bootstrap Tabs</title>
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/bootstrap-theme.min.css">
<script src="/html-example/javascript/jquery-2.1.4/jquery-2.1.4.min.js"></script>
<script
	src="/html-example/javascript/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>
</head>
<body>
	<h5>basic panel</h5>
	<div class="panel panel-default">
  		<div class="panel-heading">Panel Heading</div>
		<div class="panel-body">Panel Body</div>
		<div class="panel-footer">Panel Footer</div>
	</div>
	<hr>
	<h5>panel group</h5>
	<div class="panel-group">
		<div class="panel panel-default">
	  		<div class="panel-heading">Panel Heading</div>
			<div class="panel-body">Panel Body</div>
			<div class="panel-footer">Panel Footer</div>
		</div>
		<div class="panel panel-default">
	  		<div class="panel-heading">Panel Heading</div>
			<div class="panel-body">Panel Body</div>
			<div class="panel-footer">Panel Footer</div>
		</div>
	</div>
	<hr>
	<h5>panels with contextual classes</h5>
	<div class="panel panel-primary">
  		<div class="panel-heading">Panel Heading</div>
		<div class="panel-body">Panel Body</div>
		<div class="panel-footer">Panel Footer</div>
	</div>
	<div class="panel panel-success">
  		<div class="panel-heading">Panel Heading</div>
		<div class="panel-body">Panel Body</div>
		<div class="panel-footer">Panel Footer</div>
	</div>
	<div class="panel panel-info">
  		<div class="panel-heading">Panel Heading</div>
		<div class="panel-body">Panel Body</div>
		<div class="panel-footer">Panel Footer</div>
	</div>
	<div class="panel panel-warning">
  		<div class="panel-heading">Panel Heading</div>
		<div class="panel-body">Panel Body</div>
		<div class="panel-footer">Panel Footer</div>
	</div>
	<div class="panel panel-danger">
  		<div class="panel-heading">Panel Heading</div>
		<div class="panel-body">Panel Body</div>
		<div class="panel-footer">Panel Footer</div>
	</div>
	<hr>
	<h5>panels with table</h5>
	<div class="panel panel-default">
		<div class="panel-heading">Panel Heading</div>
		<div class="panel-body">
			Panel Body
		</div>
		<table class="table">
			<thead>
				<tr>
					<th>col 1</th>
					<th>col 2</th>
					<th>col 3</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>data 1-1</td>
					<td>data 1-2</td>
					<td>data 1-3</td>
				</tr>
				<tr>
					<td>data 2-1</td>
					<td>data 2-2</td>
					<td>data 2-3</td>
				</tr>
				<tr>
					<td>data 3-1</td>
					<td>data 3-2</td>
					<td>data 3-3</td>
				</tr>
			</tbody>
		</table>
	</div>
	<hr>
	<h5>panels with list group</h5>
	<div class="panel panel-default">
		<div class="panel-heading">Panel Heading</div>
		<div class="panel-body">
			Panel Body
		</div>
		<div class="list-group">
			<a href="#" class="list-group-item">item 1</a> 
			<a href="#" class="list-group-item">item 2</a> 
			<a href="#" class="list-group-item">item 3</a> 
		</div>
	</div>
</body>
</html>