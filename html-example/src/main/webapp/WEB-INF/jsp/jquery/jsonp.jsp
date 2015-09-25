<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsonp</title>
<script src="/html-example/javascript/jquery-2.1.4/jquery-2.1.4.min.js"></script>
</head>
<body>
	<input id="jsonpTest" type="button" value="json test"> 
	<hr>
	<div id="result"></div>
	<script type="text/javascript">
		$(function() {
			$("#jsonpTest").on("click", function(){
				$.ajax({
					type : 'GET',
					dataType : 'jsonp',
					crossDomain : true,
					traditional : true,
					url : 'http://127.0.0.1:8080/html-example/jquery/jsonpTest',
					success : function(data) {
						var json = $.parseJSON(data);
						$("#result").html(json["jsonp"]);
					}
				});
			});

		});
	</script>
</body>
</html>