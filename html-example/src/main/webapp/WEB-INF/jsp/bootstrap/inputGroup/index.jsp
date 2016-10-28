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
	<h2>simple</h2>
	<div class="input-group">
		<span class="input-group-addon">$</span> <input type="text"
			class="form-control"> <span class="input-group-addon"><i
			class="glyphicon glyphicon-search"></i></span>
	</div>
	<br>
	<h2>size</h2>
	<div class="input-group input-group-lg">
		<span class="input-group-addon">@</span> <input type="text"
			class="form-control" placeholder="input-group-lg">
	</div>
	<br>
	<div class="input-group">
		<span class="input-group-addon">@</span> <input type="text"
			class="form-control">
	</div>
	<br>
	<div class="input-group input-group-sm">
		<span class="input-group-addon">@</span> <input type="text"
			class="form-control" placeholder="input-group-sm">
	</div>
	<br>
	<h2>checkbox</h2>
	<div class="input-group">
		<span class="input-group-addon"> <input type="checkbox">
		</span> <input type="text" class="form-control">
	</div>
	<br>
	<h2>radio</h2>
	<div class="input-group">
		<span class="input-group-addon"> <input type="radio"
			name="radio">
		</span> <input type="text" class="form-control">
	</div>
	<div class="input-group">
		<span class="input-group-addon"> <input type="radio"
			name="radio" checked="checked">
		</span> <input type="text" class="form-control">
	</div>
	<br>
	<h2>button</h2>
	<div class="input-group">
		<span class="input-group-btn">
			<button class="btn btn-default" type="button">Action</button>
		</span> <input type="text" class="form-control"> <span
			class="input-group-btn">
			<button class="btn btn-default" type="button">Search</button>
		</span>
	</div>
	<br>
	<h2>button with dropdowns</h2>
	<div class="input-group">
		<div class="input-group-btn">
			<button type="button" class="btn btn-default dropdown-toggle"
				data-toggle="dropdown">
				Action <span class="caret"></span>
			</button>
			<ul class="dropdown-menu">
				<li><a href="#">action 1</a></li>
				<li><a href="#">action 2</a></li>
				<li class="divider"></li>
				<li><a href="#">action 3</a></li>
			</ul>
		</div>
		<input type="text" class="form-control">
		<div class="input-group-btn">
			<button type="button" class="btn btn-default dropdown-toggle"
				data-toggle="dropdown">
				Action <span class="caret"></span>
			</button>
			<ul class="dropdown-menu">
				<li><a href="#">action 1</a></li>
				<li><a href="#">action 2</a></li>
				<li class="divider"></li>
				<li><a href="#">action 3</a></li>
			</ul>
		</div>
	</div>
	<h2>button with dropups</h2>
	<div class="input-group">
		<div class="input-group-btn dropup">
			<button type="button" class="btn btn-default dropdown-toggle"
				data-toggle="dropdown">
				Action <span class="caret"></span>
			</button>
			<ul class="dropdown-menu">
				<li><a href="#">action 1</a></li>
				<li><a href="#">action 2</a></li>
				<li class="divider"></li>
				<li><a href="#">action 3</a></li>
			</ul>
		</div>
		<input type="text" class="form-control">
		<div class="input-group-btn">
			<button type="button" class="btn btn-default dropdown-toggle"
				data-toggle="dropdown">
				Action <span class="caret"></span>
			</button>
			<ul class="dropdown-menu">
				<li><a href="#">action 1</a></li>
				<li><a href="#">action 2</a></li>
				<li class="divider"></li>
				<li><a href="#">action 3</a></li>
			</ul>
		</div>
	</div>
	<h2>segmented buttons</h2>
	<div class="input-group">
		<div class="input-group-btn">
			<button type="button" class="btn btn-default" tabindex="-1">Action</button>
			<button type="button" class="btn btn-default dropdown-toggle"
				data-toggle="dropdown" tabindex="-1">
				<span class="caret"></span>
			</button>
			<ul class="dropdown-menu">
				<li><a href="#">action 1</a></li>
				<li><a href="#">action 2</a></li>
				<li class="divider"></li>
				<li><a href="#">action 3</a></li>
			</ul>
		</div>
		<input type="text" class="form-control">
		<div class="input-group-btn">
			<button type="button" class="btn btn-default" tabindex="-1">Action</button>
			<button type="button" class="btn btn-default dropdown-toggle"
				data-toggle="dropdown" tabindex="-1">
				<span class="caret"></span>
			</button>
			<ul class="dropdown-menu">
				<li><a href="#">action 1</a></li>
				<li><a href="#">action 2</a></li>
				<li class="divider"></li>
				<li><a href="#">action 3</a></li>
			</ul>
		</div>
	</div>
	<h2>colored</h2>
	<div class="input-group">
		<div class="input-group-btn">
			<button type="button" class="btn btn-success" tabindex="-1">Action</button>
			<button type="button" class="btn btn-danger dropdown-toggle"
				data-toggle="dropdown" tabindex="-1">
				<span class="caret"></span>
			</button>
			<ul class="dropdown-menu">
				<li><a href="#">action 1</a></li>
				<li><a href="#">action 2</a></li>
				<li class="divider"></li>
				<li><a href="#">action 3</a></li>
			</ul>
		</div>
		<input type="text" class="form-control">
		<div class="input-group-btn">
			<button type="button" class="btn btn-warning" tabindex="-1">
				<i class="glyphicon glyphicon-search"></i>
			</button>
		</div>
	</div>
</body>
</html>