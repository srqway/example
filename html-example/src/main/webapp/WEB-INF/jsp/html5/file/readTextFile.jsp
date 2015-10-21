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
	$("#file").on("change", function(event) {
		var file = event.target.files[0];
		$("#info").append("name : " + escape(file.name) + "; type : " + 
			file.type + "; size : " + file.size + " bytes; lastModifiedDate : " + 
			file.lastModifiedDate + "<br>");
		getAsText(file);
	});
	
	function getAsText(file) {
		var reader = new FileReader();  
		reader.readAsText(file, "UTF-8");
		reader.onprogress = onprogress;
		reader.onload = onload;
		reader.onerror = onerror;
	}

	function onprogress(event) {
		if (event.lengthComputable) {
			var percent = (event.loaded / event.total);
			if (percent < 1) {
				console.log(percent);
			}
		}
	}
	
	function onload(event) {  
		var content = event.target.result;
		$("#content").append(content);
	}
	
	function onerror(event) {
		alert(event.target.error);
	}
	
});
</script>
</head>
<body>
	onprogress print on console.
	<br>
	<input type="file" id="file" />
	<br>
	<output id="info"></output>
	<output id="content"></output>
</body>
</html>