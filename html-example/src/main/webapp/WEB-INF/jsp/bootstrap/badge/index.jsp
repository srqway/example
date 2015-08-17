<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bootstrap button</title>
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/bootstrap-theme.min.css">
<script src="/html-example/javascript/jquery-2.1.4/jquery-2.1.4.min.js"></script>
<script
	src="/html-example/javascript/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>
</head>
<body>
	<h2>anchor with badge</h2>
	<a href="#">badge <span class="badge">3</span></a><br>
	<br>
	<h2>button with badge</h2>
	<button type="button" class="btn btn-default">default <span class="badge">3</span></button>
	<button type="button" class="btn btn-primary">primary <span class="badge">3</span></button>
	<button type="button" class="btn btn-success">success <span class="badge">3</span></button>
	<button type="button" class="btn btn-info">info <span class="badge">3</span></button>
	<button type="button" class="btn btn-warning">warning <span class="badge">3</span></button>
	<button type="button" class="btn btn-danger">danger <span class="badge">3</span></button>
	<button type="button" class="btn btn-link">link <span class="badge">3</span></button>
	<br>
</body>
</html>