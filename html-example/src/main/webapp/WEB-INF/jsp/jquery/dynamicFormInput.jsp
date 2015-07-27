<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dynamic form input</title>
</head>
<body>
	<input id="dynamicFormInput" type="button" value="dynamic form input">
	<br> parameter : ${parameter}
</body>
<script src="/html-example/javascript/jquery-2.1.4/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#dynamicFormInput").on("click", function() {
			var input = $("<input>");
			input.attr("type", "text");
			input.attr("name", "parameter");
			input.attr("value", "success !!!");
			var form = $("<form>");
			form.attr("action", "dynamicFormInput");
			form.append(input);
			var body = $("body");
			body.append(form);
			form.submit();
		});
	});
</script>



</html>