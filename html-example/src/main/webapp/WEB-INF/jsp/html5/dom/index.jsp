<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-TW" manifest="cache_html.manifest">
<head>
<base href="http://localhost:8080/html-example/" target="_blank">
<meta charset="UTF-8">
<meta name="application-name" content="html-example">
<meta name="author" content="thank">
<meta name="description" content="Html Example">
<meta name="keywords" content="html5,dom">
<!-- <meta http-equiv="refresh" content="60;URL=http://localhost:8080/html-example/"> -->

<title>Dom</title>
<link rel="stylesheet" href="/html-example/javascript/jquery-1.11.2/css/jquery-ui.css">
<!-- <script src="/html-example/javascript/test/hello.js"></script> -->
<!-- <script src="/html-example/javascript/test/defer.js" defer="defer"></script> -->
<!-- <script src="/html-example/javascript/test/async.js" async="async"></script> -->
</head>
<body>
	<noscript>Browser doesn't support javascript !!!</noscript>
	<a href="">go to home.</a>
	<br>
	<input type="text" dir="ltr" value="12345"><input type="text" dir="rtl" value="12345">
	<br>
	<select>
		<optgroup label="group 1">
			<option>item 1-1</option>
			<option>item 1-2</option>
			<option>item 1-3</option>
		</optgroup>
		<optgroup label="group 2">
			<option>item 2-1</option>
			<option>item 2-2</option>
			<option>item 2-3</option>
		</optgroup>
	</select>
	<br>
	<table>
		<colgroup>
			<col span="2" style="background-color: red;">
			<col span="1" style="background-color: green;">
		</colgroup>
		<thead>
			<tr>
				<th>header 1</th>
				<th>header 2</th>
				<th>header 3</th>
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
		<tfoot>
			<tr>
				<th>footer 1</th>
				<th>footer 2</th>
				<th>footer 3</th>
			</tr>
		</tfoot>
	</table>
</body>
</html>