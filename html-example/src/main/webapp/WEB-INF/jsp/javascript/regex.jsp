<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Regex</title>
</head>
<body>
	<input id="text" value="title_en:President">
	<br>
	<input id="syntax" value="title_([^:]+)">
	<br>
	result : <span id="result"></span>
	<br>
	<input type="button" onclick="exec()" value="exec">
</body>
<script type="text/javascript">
	function exec() {
		var text = document.getElementById("text").value;
		var syntax = document.getElementById("syntax").value;
		var regex = new RegExp(syntax);
		var matches = regex.exec(text);
		document.getElementById("result").innerHTML = matches[1];
	}
</script>
</html>