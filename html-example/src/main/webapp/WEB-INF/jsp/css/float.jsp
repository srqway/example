<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css float</title>
<style type="text/css">
img.float_right {
    float: right;
    margin: 0 0 10px 10px;
}

p#clear_right {
    clear: right;
}

div#overflow_auto {
	overflow: auto;
	border: 1px solid red;
}

div.floatingBox {
    float: left;
    width: 150px;
    height: 75px;
    margin: 10px;
    border: 1px solid green;  
}

div.clear_left {
	clear: left;
}

</style>
</head>
<body>
	<img class="float_right" alt="/html-example/image/1.png" src="/html-example/image/1.png" style="width: 5em; height: 5em;">
	img float: right; img float: right; img float: right; img float: right; img float: right; 
	img float: right; img float: right; img float: right; img float: right; img float: right; 
	img float: right; img float: right; img float: right; img float: right; img float: right; 
	img float: right; img float: right; img float: right; img float: right; img float: right; 
	img float: right; img float: right; img float: right; img float: right; img float: right; 
	img float: right; img float: right; img float: right; img float: right; img float: right; 
	img float: right; img float: right; img float: right; img float: right; img float: right; 
	img float: right; img float: right; img float: right; img float: right; img float: right; 
	img float: right; img float: right; img float: right; img float: right; img float: right; 
	img float: right; img float: right; img float: right; img float: right; img float: right; 
	img float: right; img float: right; img float: right; img float: right; img float: right; 
	img float: right; img float: right; img float: right; img float: right; img float: right; 
	img float: right; img float: right; img float: right; img float: right; img float: right; 
	img float: right; img float: right; img float: right; img float: right; img float: right; 
	img float: right; img float: right; img float: right; img float: right; img float: right; 
	img float: right; img float: right; img float: right; img float: right; img float: right; 
	img float: right; img float: right; img float: right; img float: right; img float: right; 
	img float: right; img float: right; img float: right; img float: right; img float: right; 
	<br>
	<img class="float_right" alt="/html-example/image/1.png" src="/html-example/image/1.png" style="width: 5em; height: 5em;">
	<p id="clear_right">
		p clear: right; p clear: right; p clear: right; p clear: right; p clear: right; p clear: right; 
		p clear: right; p clear: right; p clear: right; p clear: right; p clear: right; p clear: right; 
		p clear: right; p clear: right; p clear: right; p clear: right; p clear: right; p clear: right; 
		p clear: right; p clear: right; p clear: right; p clear: right; p clear: right; p clear: right; 
		p clear: right; p clear: right; p clear: right; p clear: right; p clear: right; p clear: right; 
		p clear: right; p clear: right; p clear: right; p clear: right; p clear: right; p clear: right; 
		p clear: right; p clear: right; p clear: right; p clear: right; p clear: right; p clear: right; 
		p clear: right; p clear: right; p clear: right; p clear: right; p clear: right; p clear: right; 
		p clear: right; p clear: right; p clear: right; p clear: right; p clear: right; p clear: right; 
		p clear: right; p clear: right; p clear: right; p clear: right; p clear: right; p clear: right; 
		p clear: right; p clear: right; p clear: right; p clear: right; p clear: right; p clear: right; 
	</p>
	<br>
	<div id="overflow_auto">
		<img class="float_right" alt="/html-example/image/1.png" src="/html-example/image/1.png" style="width: 5em; height: 5em;">
		div overflow: auto;
	</div>
	<br>
	<div class="floatingBox">floating box</div>
	<div class="floatingBox">floating box</div>
	<div class="floatingBox">floating box</div>
	<div class="floatingBox">floating box</div>
	<div class="floatingBox">floating box</div>
	<div class="floatingBox">floating box</div>
	<div class="floatingBox">floating box</div>
	<div class="floatingBox">floating box</div>
	<div class="floatingBox">floating box</div>
	<div class="floatingBox">floating box</div>
	<div class="floatingBox">floating box</div>
	<div class="floatingBox">floating box</div>
	<div class="floatingBox">floating box</div>
	<div class="floatingBox">floating box</div>
	<div class="floatingBox">floating box</div>
	<div class="clear_left"></div>
	<br>
	
</html>