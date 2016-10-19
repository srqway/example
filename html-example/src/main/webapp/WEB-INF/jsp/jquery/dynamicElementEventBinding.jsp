<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dynamic element event binding</title>
</head>
<body>
	<input id="addDynamicBtn" type="button" value="add dynamic button">
</body>
<script src="/html-example/javascript/jquery-2.1.4/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#addDynamicBtn").on("click", function() {
			var $this=$(this);
			var $dynamicBtn=$("<input class=\"dynamicBtn\" type=\"button\" value=\"dynamic button\">");
			$this.after($dynamicBtn);
		});
		$(document).on('click', '.dynamicBtn', function(){
			alert("event binding success.");
		});
	});
</script>



</html>