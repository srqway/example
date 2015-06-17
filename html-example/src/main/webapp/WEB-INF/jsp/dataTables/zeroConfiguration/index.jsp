<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dataTables</title>
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="/html-example/javascript/DataTables-1.10.7/media/css/jquery.dataTables.min.css">
<script src="/html-example/javascript/jquery-2.1.4/jquery-2.1.4.min.js"></script>
<script src="/html-example/javascript/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>
<script src="/html-example/javascript/DataTables-1.10.7/media/js/jquery.dataTables.min.js"></script>
<script type="text/javascript">
$(function() {
	$('#tableId').DataTable();
});
</script>
</head>
<body>
	<table id="tableId">
		<thead>
			<tr>
				<th>Integer Value</th>
				<th>Float Value</th>
				<th>Date</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="v" items="${list}">
				<tr>
					<td>${v.integerValue}</td>
					<td>${v.floatValue}</td>
					<td><fmt:formatDate pattern="yyyy/MM/dd" value="${v.date}"/></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>