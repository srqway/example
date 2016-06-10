<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>interaction</title>
<script type="text/javascript">
	var counter = 0;
	function clearGreeting() {
		document.forms['greetingForm'].elements['greeting'].value = '';
	}
</script>
</head>
<body>
	<iframe id="iframe" style="height: 300px; width: 100%; border: none;"
		src='interactionIframe'></iframe>
	<form action="#" id="greetingForm">
		<label for="greeting">Enter a Greeting: </label> <input
			name="greeting" id="greeting" value="greeting !" type="text">
	</form>
</body>
</html>