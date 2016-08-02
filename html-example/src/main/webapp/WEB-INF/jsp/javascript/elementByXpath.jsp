<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Element by Xpath</title>
</head>
<body>
	//body[1]//div[2]//div[2]//span[2] : <span id="span"></span>
	<br>
	//body[1]//div[2]//div[2]//a[2] : <span id="a"></span>
	<div>
		div_0
			<div>
				div_0_1
				<span>span_0_1_0</span>
				<span>span_0_1_1</span>
				<a href="a_0_1_0"></a>
				<a href="a_0_1_1"></a>
			</div>
			<div>
				div_0_2
				<span>span_0_2_0</span>
				<span>span_0_2_1</span>
				<a href="a_0_2_0"></a>
				<a href="a_0_2_1"></a>
			</div>
	</div>
	<div>
		div_1
			<div>
				div_1_1
				<span>span_1_1_0</span>
				<span>span_1_1_1</span>
				<a href="a_1_1_0"></a>
				<a href="a_1_1_1"></a>
			</div>
			<div>
				div_1_2
				<span>span_1_2_0</span>
				<span>span_1_2_1</span>
				<a href="a_1_2_0"></a>
				<a href="a_1_2_1"></a>
			</div>
	</div>
</body>
<script type="text/javascript">
	var spanEle = document.evaluate("//BODY[1]//DIV[2]//DIV[2]//SPAN[2]", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null);
	document.getElementById("span").innerHTML = spanEle.singleNodeValue.textContent;
	var aEle = document.evaluate("//BODY[1]//DIV[2]//DIV[2]//A[2]", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null);
	document.getElementById("a").innerHTML = aEle.singleNodeValue.getAttribute("href");
</script>
</html>