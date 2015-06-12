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
	<div class="container">
		<h2>Dynamic Tabs</h2>
		<ul class="nav nav-tabs">
			<li class="active"><a data-toggle="tab" href="#dynamicTab1">tab 1</a></li>
			<li><a data-toggle="tab" href="#dynamicTab2">tab 2</a></li>
			<li><a data-toggle="tab" href="#dynamicTab3">tab 3</a></li>
		</ul>
		<div class="tab-content">
			<div id="dynamicTab1" class="tab-pane fade in active">
				<p>This is tab 1.</p>
			</div>
			<div id="dynamicTab2" class="tab-pane fade">
				<p>This is tab 2.</p>
			</div>
			<div id="dynamicTab3" class="tab-pane fade">
				<p>This is tab 3.</p>
			</div>
		</div>
	</div>
</body>
</html>