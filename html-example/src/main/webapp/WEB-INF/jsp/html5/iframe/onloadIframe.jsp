<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>untitled</title>
<link rel="stylesheet" href="css/demo.css" type="text/css">
<script type="text/javascript">
	counter = 0;
	function clearGreeting() {
		document.forms['iframeDemoForm'].elements['greeting'].value = '';
	}
</script>
</head>
<body>
	<h1>Iframe</h1>
	<form action="#" id="iframeDemoForm">
		<label for="greeting">Enter a Greeting: </label> <input
			name="greeting" id="greeting" value="Hello there!" type="text">
	</form>
	<script type="text/javascript">
		(function() {
			// disable submission of all forms on this page
			for (var i = 0, len = document.forms.length; i < len; i++) {
				document.forms[i].onsubmit = function() {
					return false;
				};
			}
		}());
	</script>
</body>
</html>