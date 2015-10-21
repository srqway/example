<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>select files</title>
<script src="/html-example/javascript/jquery-2.1.4/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
$(function() {
	$("#files").on("change", function(event) {
		var files = event.target.files; // FileList object
		var $list = $("#list");
		for (var i = 0, f; f = files[i]; ++i) {
			$list.append("name : " + escape(f.name) + "; type : " + f.type + "; size : " + 
				f.size + " bytes; lastModifiedDate : " + f.lastModifiedDate + "<br>");
		}
	});
});

</script>
</head>
<body>
	<input type="file" id="files" name="files[]" multiple />
	<br>
	<output id="list"></output>
</body>
</html>