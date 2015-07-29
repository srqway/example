<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>iframe with echarts</title>
</head>
<body>
	before iframe
	<hr>
	<iframe style="height: 420px; width: 1000px; border: none;" src='<c:url value="/echarts/treeMap/basicTreeMap"></c:url>'></iframe>
	<hr>
	after iframe
</body>
</html>