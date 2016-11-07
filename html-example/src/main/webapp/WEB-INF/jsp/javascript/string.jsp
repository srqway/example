<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>String</title>
</head>
<body>
	<input id="split" value="itemA,    itemB itemC">
	<span id="splitResult"></span>
	<br>
	<input type="button" onclick="split()" value="split">
</body>
<script type="text/javascript">
	var keywords = $keywordsInput.val().split(/[\s,]+/);
	function split() {
		var split = document.getElementById("split").value;
		var splitResult = split.split(/[\s,]+/);
		document.getElementById("splitResult").innerHTML = splitResult;
	}
</script>
</html>