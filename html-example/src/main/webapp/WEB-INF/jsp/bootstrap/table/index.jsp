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
	<h5>basic table</h5>
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
	<hr>
	<h5>tables striped</h5>
	<table class="table table-striped">
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
	<hr>
	<h5>table bordered</h5>
	<table class="table table-bordered">
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
	<hr>
	<h5>table hover</h5>
	<table class="table table-hover">
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
	<hr>
	<h5>table condensed</h5>
	<table class="table table-condensed">
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
	<hr>
	<h5>emphasis table</h5>
	<table class="table">
		<thead>
			<tr>
				<th>col 1</th>
				<th>col 2</th>
				<th>col 3</th>
			</tr>
		</thead>
		<tbody>
			<tr class="active">
				<td>data 1-1</td>
				<td>data 1-2</td>
				<td>data 1-3</td>
			</tr>
			<tr class="success">
				<td>data 2-1</td>
				<td>data 2-2</td>
				<td>data 2-3</td>
			</tr>
			<tr class="info">
				<td>data 3-1</td>
				<td>data 3-2</td>
				<td>data 3-3</td>
			</tr>
			<tr class="warning">
				<td>data 1-1</td>
				<td>data 1-2</td>
				<td>data 1-3</td>
			</tr>
			<tr class="danger">
				<td>data 2-1</td>
				<td>data 2-2</td>
				<td>data 2-3</td>
			</tr>
		</tbody>
	</table>
	<hr>
	<h5>table responsive</h5>
	<div class="table-responsive">
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
					<td>data 1-1 : very very very very long text.</td>
					<td>data 1-2 : very very very very long text.</td>
					<td>data 1-3 : very very very very long text.</td>
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
</body>
</html>