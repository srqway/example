<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>iframe with echarts</title>
<script src="/html-example/javascript/jquery-2.1.4/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#select").on("change", function() {
			$("#iframe").attr("src", $(this).val());
		});
	});
</script>
</head>
<body>
	<select id="select">
		<option value='<c:url value="/echarts/wordCloud/wordCloud"></c:url>'>word
			cloud</option>
		<option value='<c:url value="/echarts/treeMap/basicTreeMap"></c:url>'>basic
			tree map</option>
	</select>
	<hr>
	<iframe id="iframe" style="height: 420px; width: 1000px; border: none;"
		src=''></iframe>
</body>
</html>