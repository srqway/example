<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css multiple column</title>
<style type="text/css">
#column-count_3 {
	-webkit-column-count: 3;
	-moz-column-count: 3;
	column-count: 3;
	-webkit-column-width: 300px;
	column-width: 300px;
	-webkit-column-gap: 10px;
	-moz-column-gap: 10px;
	column-gap: 10px;
	-webkit-column-rule-style: solid;
	-moz-column-rule-style: solid;
	column-rule-style: solid;
	-webkit-column-rule-width: 1px;
	-moz-column-rule-width: 1px;
	column-rule-width: 1px;
	-webkit-column-rule-color: blue;
	-moz-column-rule-color: blue;
	column-rule-color: blue;
	column-width: 100px;
}
</style>
</head>
<body>
	<div id="column-count_3">column-count: 3; column-count: 3;
		column-count: 3; column-count: 3; column-count: 3; column-count: 3;
		column-count: 3; column-count: 3; column-count: 3; column-count: 3;
		column-count: 3; column-count: 3; column-count: 3; column-count: 3;
		column-count: 3; column-count: 3; column-count: 3; column-count: 3;
		column-count: 3; column-count: 3; column-count: 3; column-count: 3;
		column-count: 3; column-count: 3;</div>
</body>
</html>