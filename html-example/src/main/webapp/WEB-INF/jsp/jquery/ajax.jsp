<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax</title>
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/bootstrap-theme.min.css">
<script src="/html-example/javascript/jquery-2.1.4/jquery-2.1.4.min.js"></script>
<script
	src="/html-example/javascript/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>
</head>
<body>
	<input id="get" type="button" value="get"> 
	<br>
	<input id="post" type="button" value="post"> 
	<br>
	<input id="ajaxJsonWithChineseResponse_get" type="button" value="ajax get json with chinese response">
	<br>
	<input id="ajaxJsonWithChineseResponse_post" type="button" value="ajax post json with chinese response"> 
	<br>
	<input id="chinese" type="text" value="中文">
	<br>
	context : <span id="context"></span>
	<script type="text/javascript">
		$(function() {
			var setting = {
// 				url : 'ajaxWithBootstrap',
// 				data: { "chinese" : chinese },
				traditional : true,
				contentType : 'application/x-www-form-urlencoded; charset=UTF-8',	// false, application/json, multipart/form-data, or text/plain
				context: document.getElementById("context"),
				cache : false,	// true, false
// 				dataType : 'html',	// xml, json, script, or html
		        ifModified : false, // false, true
// 		        method : 'GET',	// GET, POST ...
				timeout : 10000,
				beforeSend : function(jqXHR, setting) {
					alert("beforeSend");
				},
// 				success : function(data) {
// 					$('#getResult').html(data);
// 				},
				complete : function(jqXHR, textStatus) {
					alert("complete : " + textStatus);
				},
				error : function(jqXHR, textStatus, errorThrown) {
					alert("error : " + textStatus);
				},
				statusCode: {
					404 : function() {
						alert( "page not found" );
					}
				}
			};
			
			$("#get").on("click", function() {
				setting.url = "ajaxGetWithBootstrap";
				setting.method = "GET";
				var chinese = $("#chinese").val();
				setting.data = {"chinese" : chinese};
				setting.dataType = "html";
				setting.success = function(data) {
					$('#getResult').html(data);
				};
				$.ajax(setting).done(function(data, textStatus,jqXHR) {
					$(this).html("done : " + textStatus);
				});
			});
			
			$("#post").on("click", function() {
				setting.url = "ajaxPostWithBootstrap";
				setting.method = "POST";
				var chinese = $("#chinese").val();
				setting.data = {"chinese" : chinese};
				setting.dataType = "html";
				setting.success = function(data) {
					$('#postResult').html(data);
				};
				$.ajax(setting).done(function(data, textStatus,jqXHR) {
					$(this).html("done : " + textStatus);
				});
			});
			
			$("#ajaxJsonWithChineseResponse_get").on("click", function() {
				setting.url = "ajaxJsonWithChineseResponse";
				setting.method = "GET";
				setting.dataType = "json";
				setting.success = function(data) {
					$('#getResult').html(data);
				};
				$.ajax(setting).done(function(data, textStatus,jqXHR) {
					$(this).html("done : " + textStatus);
				});
			});
			
			$("#ajaxJsonWithChineseResponse_post").on("click", function() {
				setting.url = "ajaxJsonWithChineseResponse";
				setting.method = "POST";
				setting.dataType = "json";
				setting.success = function(data) {
					$('#postResult').html(data);
				};
				$.ajax(setting).done(function(data, textStatus,jqXHR) {
					$(this).html("done : " + textStatus);
				});
			});
		});
	</script>
	<br> 
	<br> 
	get : 
	<div id="getResult"></div>
	<br>
	post : 
	<div id="postResult"></div>
	<hr>
</body>
</html>