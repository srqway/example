<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Papa Parse Index</title>
<script src="/html-example/javascript/jquery-2.1.4/jquery-2.1.4.min.js"></script>
<script src="/html-example/javascript/PapaParse-master/papaparse.min.js"></script>
</head>
<script type="text/javascript">
$(function() {
	$("#csvToJson").on("click", function() {
		var config = {
			delimiter: "\n",
			header: true,
			download: false
		};
		var result = Papa.parse("source,target,strength\n無能,兩大,2.220446049250313e-16\n無能,媽媽,2.220446049250313e-16", config);
		console.log(result.data);
	});
});
</script>
<body>
	result print at console.
	<br>
	<input type="button" id="csvToJson" value="csv to json">
	<br>
</body>
</html>