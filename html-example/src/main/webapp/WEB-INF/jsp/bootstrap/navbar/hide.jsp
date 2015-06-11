<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bootstrap Navbar</title>
<link rel="stylesheet"
	href="/html-example/javascript/jquery-1.11.2/jquery-ui-1.11.4.custom/jquery-ui.min.css">
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/bootstrap-theme.min.css">
<script
	src="/html-example/javascript/jquery-1.11.2/jquery-1.11.2.min.js"></script>
<script
	src="/html-example/javascript/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>
</head>
<body>
	<nav role="navigation" class="navbar navbar-default">
		<div class="navbar-header">
			<span class="navbar-brand">Brand</span>
			<button type="button" data-target="#navbarCollapse"
				data-toggle="collapse" class="navbar-toggle">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>
		<div id="navbarCollapse" class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="hidden-xs"><a href="#">hidden-xs</a></li>
				<li class="hidden-sm"><a href="#">hidden-sm</a></li>
				<li class="hidden-md"><a href="#">hidden-md</a></li>
				<li class="hidden-lg"><a href="#">hidden-lg</a></li>		
			</ul>
		</div>
	</nav>
</body>
</html>