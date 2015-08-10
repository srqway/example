<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>datepicker simple calendar</title>
<link rel="stylesheet"
	href="/html-example/javascript/datepicker/css/base.css">
<link rel="stylesheet"
	href="/html-example/javascript/datepicker/css/clean.css">
<script src="/html-example/javascript/jquery-2.1.4/jquery-2.1.4.min.js"></script>
<script src="/html-example/javascript/datepicker/js/datepicker.js"></script>
<script type="text/javascript">
$(function() {
	$('#simple-calendar').DatePicker({
		mode : 'single',
		inline : true,
		date : new Date()
	});	
});
</script>
</head>
<body>
	<div id="simple-calendar"></div>
</body>
</html>