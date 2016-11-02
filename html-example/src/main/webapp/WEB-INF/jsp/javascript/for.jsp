<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>For</title>
</head>
<body>
    <div>---forArray---</div>
	<div id="forArray"></div>
    <div>---forMap---</div>
	<div id="forMap"></div>
</body>
<script type="text/javascript">
var html=null;
var forArray = ["forArray_0", "forArray_1", "forArray_2"];
html="";
for (i=0, size=forArray.length; i < size; ++i) { 
    html += forArray[i] + "<br>";
}
document.getElementById("forArray").innerHTML=html;
var forMap = {"forMap_0":0, "forMap_1":1, "forMap_2":2}; 
html="";
for (x in forMap) { 
    html += forMap[x] + "<br>";
}
document.getElementById("forMap").innerHTML=html;
</script>
</html>