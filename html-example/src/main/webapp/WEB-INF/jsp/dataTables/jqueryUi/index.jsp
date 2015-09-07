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
	href="/html-example/javascript/jquery-ui-1.11.4.custom/jquery-ui.min.css">
<link rel="stylesheet"
	href="/html-example/javascript/DataTables-1.10.7/integration/jqueryui/dataTables.jqueryui.css">
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
	var height = $(window).height() - 200;
	$('#tableId').DataTable({
		"info" : true,
		"ordering" : true,
		"order" : [ [ 1, "desc" ] ],
		"paging" : true,
		"scrollY" : height + "px",
		"scrollX" : true,
		"scrollXInner" : "200%",
		"scrollCollapse" : true,
		"jQueryUI" : true,
		"language" : {
			"search" : "篩選:",
			"emptyTable" : "查無資料",
			"info" : "顯示 _START_ 到 _END_ 筆 / 共 _TOTAL_ 筆",
			"infoEmpty" : "",
			"sInfoFiltered" : "(篩選前共 _MAX_ 筆)",
			"lengthMenu" : '顯示 _MENU_ 筆',
			"zeroRecords" : "無符合資料",
			"paginate" : {
				"first" : "第一筆",
				"sLast" : "最後一筆",
				"sNext" : "下一筆",
				"sPrevious" : "前一筆"
			}
		}
	});
});
</script>
</head>
<body>
	<table id="tableId" class="table table-striped">
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
					<td><fmt:formatDate pattern="yyyy/MM/dd" value="${v.dateValue}"/></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>