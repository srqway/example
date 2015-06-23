<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-TW" manifest="cache_html.manifest">
<head>
<!-- <base href="http://localhost:8080/html-example/" target="_blank"> -->
<meta charset="UTF-8">
<meta name="application-name" content="html-example">
<meta name="author" content="thank">
<meta name="description" content="Html Example">
<meta name="keywords" content="html5,dom">
<!-- <meta http-equiv="refresh" content="60;URL=http://localhost:8080/html-example/"> -->

<title>Dom</title>
<link rel="stylesheet" href="/html-example/javascript/jquery-1.11.2/css/jquery-ui.css">
<script src="/html-example/javascript/jquery-2.1.4/jquery-2.1.4.min.js"></script>
<!-- <script src="/html-example/javascript/test/hello.js"></script> -->
<!-- <script src="/html-example/javascript/test/defer.js" defer="defer"></script> -->
<!-- <script src="/html-example/javascript/test/async.js" async="async"></script> -->
</head>
<body>
	<noscript>Browser doesn't support javascript !!!</noscript>
<!-- 	<a href="">go to home.</a> -->
	<br>
	<h5>ltr and rtl</h5>
	<input type="text" dir="ltr" value="ltr"><input type="text" dir="rtl" value="rtl">
	<br>
	<h5>select optgroup</h5>
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
	<h5>table colgroup</h5>
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
	<br>
	<h5>mark</h5>
	Test <mark>mark</mark> tag.
	<br>
	<h5>ruby rt</h5>
	<ruby>
	注<rt>ㄓㄨˋ</rt>音<rt>ㄧㄣ</rt>
	</ruby>
	<br>
	<h5>wbr</h5>
	abcdefghijklmnopqrstuvwxyz<wbr>abcdefghijklmnopqrstuvwxyz<wbr>abcdefghijklmnopqrstuvwxyz<wbr>abcdefghijklmnopqrstuvwxyz<wbr>abcdefghijklmnopqrstuvwxyz<wbr>abcdefghijklmnopqrstuvwxyz<wbr>abcdefghijklmnopqrstuvwxyz<wbr>abcdefghijklmnopqrstuvwxyz<wbr>abcdefghijklmnopqrstuvwxyz<wbr>abcdefghijklmnopqrstuvwxyz<wbr>
	<br>
	<h5>security</h5>
	<form action="security">
		keygen : <keygen name="security">
		<input type="submit">
	</form>
	<br>
	<h5>output</h5>
	<input id="x" type="text" value="2"> + 
	<input id="y" type="text" value="3"> 
	<button id="calculate">=</button> 
	<output id="result"></output>
	<script type="text/javascript">
	$(function() {
		$("#calculate").on("click", function() {
			var x = $("#x").val();
			var y = $("#y").val();
			$("#result").val(parseInt(x) + parseInt(y));
		});
	});	 
	</script>
	<br>
	<h5>content editable</h5>
	<p contenteditable="true">content editable</p>
	<br>
	<h5>data-*</h5>
	<button id="dataEnglishTitle" data-english-title="data english title">data-english-title</button>
	<script type="text/javascript">
	$(function() {
		$("#dataEnglishTitle").on("click", function() {
			var data = $("#dataEnglishTitle").data("englishTitle");
			alert(data);
		});
	});	 
	</script>
	<br>
	<h5>form required</h5>
	<form action="#">
		required : <input type="text" required="required"><input type="submit">
	</form>
	<br>
	<h5>form regex</h5>
	<form action="#">
		patten a-z only : <input type="text" pattern="[a-z]*"><input type="submit">
	</form>
	<br>
	<h5>auto focus</h5>
	<input type="text" placeholder="autofocus" autofocus="autofocus">
	<br>
	<h5>form outside and override</h5>
	<form id="myForm" action="form" method="get">
		<input name="parameter1" value="inside parameter"><br>
		<input type="submit" value="submit"><br>
		<input type="submit" value="override submit" formaction="overrideForm" formmethod="post" formtarget="_blank"><br>
	</form>
	<input name="parameter2" value="outside parameter" form="myForm">
	<br>
</body>
</html>