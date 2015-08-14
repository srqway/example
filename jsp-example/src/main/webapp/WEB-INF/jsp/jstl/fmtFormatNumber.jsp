<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl c:url</title>
</head>
<body>
	<h2>double : ${_double}</h2>
	<br>
	<fmt:formatNumber maxIntegerDigits="5" minIntegerDigits="5" maxFractionDigits="5" minFractionDigits="5" type="NUMBER" value="${_double}" />
	<br>
	<fmt:formatNumber maxIntegerDigits="5" minIntegerDigits="5" maxFractionDigits="5" minFractionDigits="5" type="CURRENCY" value="${_double}" />
	<br>
	<fmt:formatNumber maxIntegerDigits="5" minIntegerDigits="5" maxFractionDigits="5" minFractionDigits="5" type="PERCENT" value="${_double}" />
	<br>
</body>
</html>