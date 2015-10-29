<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dataTables ajax fetch all</title>
<link rel="stylesheet"
	href="/html-example/javascript/DataTables-1.10.7/media/css/jquery.dataTables.min.css">
<script src="/html-example/javascript/jquery-2.1.4/jquery-2.1.4.min.js"></script>
<script
	src="/html-example/javascript/DataTables-1.10.7/media/js/jquery.dataTables.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('#tableId').DataTable({
			"ajax" : 'ajaxJsonData',
			"processing" : true,
			"deferRender" : true,
			"columns": [
				{ "data": "integerValue" },
				{ "data": "floatValue" },
				{ "data": "dateValue" },
				{ "data": "stringValue" },
				{ "data": "enumerationValue" }
			]
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