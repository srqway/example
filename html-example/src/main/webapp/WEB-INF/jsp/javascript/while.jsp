<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>While</title>
</head>
<body>
	<div>---while---</div>
	<div id="while"></div>
	<div>---doWhile---</div>
	<div id="doWhile"></div>
</body>
<script type="text/javascript">
var html=null;
var i=0;
html="";
i=0;
while (i < 3) {
	html+=i+"<br>";
	++i;
}
document.getElementById("while").innerHTML=html;

html="";
i=0;
do {
	html+=i+"<br>"
	++i;
}while (i < 3);
document.getElementById("doWhile").innerHTML=html;

</script>
</html>