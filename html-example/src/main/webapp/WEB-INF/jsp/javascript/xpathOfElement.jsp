<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Xpath of Element</title>
</head>
<body>
	span : <span id="span"></span>
	<br>
	a : <span id="a"></span>
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
				<span id="spanTarget">span_1_2_1</span>
				<a href="a_1_2_0"></a>
				<a id="aTarget" href="a_1_2_1"></a>
			</div>
	</div>
</body>
<script type="text/javascript">
var spanEle = document.getElementById("spanTarget");
var aEle = document.getElementById("aTarget");
document.getElementById("span").innerHTML = getXpath(spanEle);
document.getElementById("a").innerHTML = getXpath(aEle);

function getXpath(ele) {
	var tempEle = ele;
	var xpathArr = [];
	do {
		xpathArr.unshift(getPartialXpath(tempEle));
		tempEle = tempEle.parentNode
	} while(tempEle.localName.toLowerCase() != "html");
	return "//" + xpathArr.join("//");
}

function getPartialXpath(ele) {
	var tagName = ele.tagName;
	var i = 1;
	for (sib = ele.previousSibling; sib; sib = sib.previousSibling) { 
		if (ele.localName == sib.localName) ++i;
	}
	return tagName + "[" + i + "]";
} 

</script>
</html>