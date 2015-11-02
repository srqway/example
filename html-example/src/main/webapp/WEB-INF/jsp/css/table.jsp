<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css table</title>
<style type="text/css">
table, th, td {
	border: 1px solid black;
}

table#border-collapse_collapse {
	border-collapse: collapse;
}


table#padding_15px th, td {
	padding: 15px;
}
</style>
</head>
<body>
	<table>
		<caption>border: 1px solid black;</caption>
		<thead>
			<tr>
				<th>thead/tr/th 0</th>
				<th>thead/tr/th 1</th>
				<th>thead/tr/th 2</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>tbody/tr/td 0</td>
				<td>tbody/tr/td 1</td>
				<td>tbody/tr/td 2</td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<th>tfoot/tr/th 0</th>
				<th>tfoot/tr/th 1</th>
				<th>tfoot/tr/th 2</th>
			</tr>
		</tfoot>
	</table>
	<br>
	<table id="border-collapse_collapse">
		<caption>border-collapse: collapse;</caption>
		<thead>
			<tr>
				<th>thead/tr/th 0</th>
				<th>thead/tr/th 1</th>
				<th>thead/tr/th 2</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>tbody/tr/td 0 tbody/tr/td 0 tbody/tr/td 0</td>
				<td>tbody/tr/td 1 tbody/tr/td 1 tbody/tr/td 1</td>
				<td>tbody/tr/td 2 tbody/tr/td 2 tbody/tr/td 2</td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<th>tfoot/tr/th 0</th>
				<th>tfoot/tr/th 1</th>
				<th>tfoot/tr/th 2</th>
			</tr>
		</tfoot>
	</table>
	<br>
	<table id="padding_15px">
		<caption>padding: 15px;</caption>
		<thead>
			<tr>
				<th>thead/tr/th 0</th>
				<th>thead/tr/th 1</th>
				<th>thead/tr/th 2</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>tbody/tr/td 0</td>
				<td>tbody/tr/td 1</td>
				<td>tbody/tr/td 2</td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<th>tfoot/tr/th 0</th>
				<th>tfoot/tr/th 1</th>
				<th>tfoot/tr/th 2</th>
			</tr>
		</tfoot>
	</table>
	<br>
</body>
</html>