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
	<h2>button</h2>
	<button type="button" class="btn btn-default">default</button>
	<button type="button" class="btn btn-primary">primary</button>
	<button type="button" class="btn btn-success">success</button>
	<button type="button" class="btn btn-info">info</button>
	<button type="button" class="btn btn-warning">warning</button>
	<button type="button" class="btn btn-danger">danger</button>
	<button type="button" class="btn btn-link">link</button>
	<hr>
	<h2>anchor</h2>
	<a href="javascript:void(0)" class="btn btn-default" role="button">default</a>
	<a href="javascript:void(0)" class="btn btn-primary" role="button">primary</a>
	<a href="javascript:void(0)" class="btn btn-success" role="button">success</a>
	<a href="javascript:void(0)" class="btn btn-info" role="button">info</a>
	<a href="javascript:void(0)" class="btn btn-warning" role="button">warning</a>
	<a href="javascript:void(0)" class="btn btn-danger" role="button">danger</a>
	<a href="javascript:void(0)" class="btn btn-link" role="button">link</a>
	<hr>
	<h2>input</h2>
	<input type="button" class="btn btn-default" value="default">
	<input type="button" class="btn btn-primary" value="primary">
	<input type="button" class="btn btn-success" value="success">
	<input type="button" class="btn btn-info" value="info">
	<input type="button" class="btn btn-warning" value="warning">
	<input type="button" class="btn btn-danger" value="danger">
	<input type="button" class="btn btn-link" value="link">
	<hr>
	<h2>size</h2>
	<button type="button" class="btn btn-primary btn-xs">extrem
		small</button>
	<button type="button" class="btn btn-primary btn-sm">small</button>
	<button type="button" class="btn btn-primary btn-md">medium</button>
	<button type="button" class="btn btn-primary btn-lg">large</button>
	<hr>
	<h2>block</h2>
	<button type="button" class="btn btn-default btn-block">default</button>
	<button type="button" class="btn btn-primary btn-block">primary</button>
	<button type="button" class="btn btn-success btn-block">success</button>
	<button type="button" class="btn btn-info btn-block">info</button>
	<button type="button" class="btn btn-warning btn-block">warning</button>
	<button type="button" class="btn btn-danger btn-block">danger</button>
	<button type="button" class="btn btn-link btn-block">link</button>
	<hr>
	<h2>active</h2>
	<button type="button" class="btn btn-default active">default</button>
	<button type="button" class="btn btn-primary active">primary</button>
	<button type="button" class="btn btn-success active">success</button>
	<button type="button" class="btn btn-info active">info</button>
	<button type="button" class="btn btn-warning active">warning</button>
	<button type="button" class="btn btn-danger active">danger</button>
	<button type="button" class="btn btn-link active">link</button>
	<hr>
	<h2>active</h2>
	<button type="button" class="btn btn-default disabled">default</button>
	<button type="button" class="btn btn-primary disabled">primary</button>
	<button type="button" class="btn btn-success disabled">success</button>
	<button type="button" class="btn btn-info disabled">info</button>
	<button type="button" class="btn btn-warning disabled">warning</button>
	<button type="button" class="btn btn-danger disabled">danger</button>
	<button type="button" class="btn btn-link disabled">link</button>
	<hr>
</body>
</html>