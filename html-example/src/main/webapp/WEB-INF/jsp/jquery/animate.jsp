<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>animate</title>
<style type="text/css">
.active {
	background-color: red;
}
</style>
</head>
<body>
	<input type="button" id="previousButton" value="previous">
	<input type="button" id="nextButton" value="next">	
	<p>begin</p>
	<br>
	<br>
	<br>
	<p>test animate <span id="id_0">target_0</span>.</p>
	<br>
	<br>
	<br>
	<p>test animate <span id="id_1">target_1</span>.</p>
	<br>
	<br>
	<br>
	<p>test animate <span id="id_2">target_2</span>.</p>
	<br>
	<br>
	<br>
	<p>test animate <span id="id_3">target_3</span>.</p>
	<br>
	<br>
	<br>
	<p>test animate <span id="id_4">target_4</span>.</p>
	<br>
	<br>
	<br>
	<p>end</p>
</body>
<script src="/html-example/javascript/jquery-2.1.4/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
   $(function() {
   	var index = 2;
	var ids = ["id_0", "id_1", "id_2", "id_3", "id_4"];
	$("#" + ids[index]).addClass("active"); 
	$('html, body').animate({scrollTop: $("#" + ids[index]).offset().top - 200}, 0);
	$("#nextButton").on("click", function() {
   		if(index >= (ids.length - 1)) {
   			return;
   		}
   		$("#" + ids[index]).removeClass("active");
   		index = index + 1;
   		$("#" + ids[index]).addClass("active"); 
   		$('html, body').animate({scrollTop: $("#" + ids[index]).offset().top - 200}, 500);
   	});
   	$("#previousButton").on("click", function() {
   		if(index <= 0) {
   			return;
   		}
   		$("#" + ids[index]).removeClass("active");  
   		index = index - 1;
   		$("#" + ids[index]).addClass("active"); 
   		$('html, body').animate({scrollTop: $("#" + ids[index]).offset().top - 200}, 500);
   	});	
   });
</script>
</html>