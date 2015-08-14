<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bootstrap Table Scrollable Table</title>
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/bootstrap-theme.min.css">
<style type="text/css">
.table-fixed thead {
	width: 97%;
}

.table-fixed tbody {
	height: 230px;
	overflow-y: auto;
	width: 100%;
}

.table-fixed thead, .table-fixed tbody, .table-fixed tr, .table-fixed td,
	.table-fixed th {
	display: block;
}

.table-fixed tbody td, .table-fixed thead>tr>th {
	float: left;
	border-bottom-width: 0;
}
</style>
<script src="/html-example/javascript/jquery-2.1.4/jquery-2.1.4.min.js"></script>
<script
	src="/html-example/javascript/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>
</head>
<body>
	<table class="table table-fixed">
		<thead>
			<tr>
				<th class="col-xs-3">integer value</th>
				<th class="col-xs-3">float value</th>
				<th class="col-xs-6">date</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="v" items="${datas}">
				<tr>
					<td class="col-xs-3">${v.integerValue}</td>
					<td class="col-xs-3">${v.floatValue}</td>
					<td class="col-xs-6"><fmt:formatDate pattern="yyyy/MM/dd"
							value="${v.date}" /></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>