<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>datepicker multi-calendar</title>
<link rel="stylesheet"
	href="/html-example/javascript/datepicker/css/base.css">
<link rel="stylesheet"
	href="/html-example/javascript/datepicker/css/clean.css">
<script src="/html-example/javascript/jquery-2.1.4/jquery-2.1.4.min.js"></script>
<script src="/html-example/javascript/datepicker/js/datepicker.js"></script>
<script type="text/javascript">
	$(function() {
		$('#multi-calendar').DatePicker(
				{
					mode : 'multiple',
					inline : true,
					calendars : 3,
					date : [ new Date(), new Date() - 172800000,
							new Date() - 345600000 ]
				});
	});
</script>
</head>
<body>
	<div id="multi-calendar"></div>
</body>
</html>