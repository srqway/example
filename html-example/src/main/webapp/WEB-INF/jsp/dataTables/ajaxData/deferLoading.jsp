<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dataTables ajax defer loading</title>
<link rel="stylesheet"
	href="/html-example/javascript/DataTables-1.10.7/media/css/jquery.dataTables.min.css">
<script src="/html-example/javascript/jquery-2.1.4/jquery-2.1.4.min.js"></script>
<script
	src="/html-example/javascript/DataTables-1.10.7/media/js/jquery.dataTables.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('#tableId').DataTable({
			"ajax" : {
				url : 'ajaxDeferLoadingJsonData',
				traditional : false
			},
			"processing" : true,
			"serverSide" : true,
			"deferRender" : true,
			"deferLoading" : 30,
			"columns" : [ {
				"data" : "integerValue"
			}, {
				"data" : "floatValue"
			}, {
				"data" : "dateValue"
			}, {
				"data" : "stringValue"
			}, {
				"data" : "enumerationValue"
			} ]
		});
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
				<th>String Value</th>
				<th>Enumeration Value</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="v" items="${data}">
				<tr>
					<td>${v.integerValue}</td>
					<td>${v.floatValue}</td>
					<td>${v.dateValue}</td>
					<td>${v.stringValue}</td>
					<td>${v.enumerationValue}</td>
				</tr>
			</c:forEach>
		</tbody>
		<tfoot>
			<tr>
				<th>Integer Value</th>
				<th>Float Value</th>
				<th>Date</th>
				<th>String Value</th>
				<th>Enumeration Value</th>
			</tr>
		</tfoot>
	</table>
</body>
</html>