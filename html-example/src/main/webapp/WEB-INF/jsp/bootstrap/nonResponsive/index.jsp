<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<title>Bootstrap Non Reponsitive</title>
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/non-responsive.css">
<script src="/html-example/javascript/jquery-2.1.4/jquery-2.1.4.min.js"></script>
<script
	src="/html-example/javascript/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<nav role="navigation" class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<span class="navbar-brand"><img
					style="width: 30px; height: 30px;" alt="Brand"
					src="/html-example/image/talk.png"></span>
				<button type="button" data-target="#navbarCollapse"
					data-toggle="collapse" class="navbar-toggle">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div id="navbarCollapse" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Active</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">Dropdown
							<span class="caret"></span>
					</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">menu 1-1</a></li>
							<li><a href="#">menu 1-2</a></li>
							<li class="divider"></li>
							<li><a href="#">menu 2-1</a></li>
						</ul></li>
				</ul>
				<p class="navbar-text navbar-left">Text</p>
				<button type="button" class="btn btn-default navbar-btn navbar-left">Button</button>
				<form class="navbar-form navbar-left" role="search">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Search">
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
				</form>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">Right</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">
		<h5>non responsive</h5>
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
		<form>
			<div class="row">
				<div class="col-xs-6">
					<input type="text" class="form-control input-lg"
						placeholder="input-lg">
				</div>
				<div class="col-xs-6">
					<select class="form-control input-lg">
						<option>input-lg</option>
					</select>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-6">
					<input type="text" class="form-control" placeholder="default">
				</div>
				<div class="col-xs-6">
					<select class="form-control">
						<option>default</option>
					</select>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-6">
					<input type="text" class="form-control input-sm"
						placeholder="input-sm">
				</div>
				<div class="col-xs-6">
					<select class="form-control input-sm">
						<option>input-sm</option>
					</select>
				</div>
			</div>
		</form>
	</div>
</body>
</html>