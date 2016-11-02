<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Switch</title>
</head>
<body>
	<div>---switchString---</div>
	<div id="switchString"></div>
	<div>---switchInteger---</div>
	<div id="switchInteger"></div>
</body>
<script type="text/javascript">
	var html = null;
	html = "";
	switch ("b") {
	case "a":
		html = "switch to a";
		break;
	case "b":
		html = "switch to b";
		break;
	case "c":
		html = "switch to c";
		break;
	default:
		html = "switch to default";
	}
	document.getElementById("switchString").innerHTML = html;

	html = "";
	switch (1) {
	case 0:
		html = "switch to 0";
		break;
	case 1:
		html = "switch to 1";
		break;
	case 2:
		html = "switch to 2";
		break;
	default:
		html = "switch to default";
	}
	document.getElementById("switchInteger").innerHTML = html;
</script>
</html>