<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>d3plus bubbles</title>
</head>
<body>
	<div id="viz" style="width: 100%; height: 500px;"></div>
</body>
<script src="/html-example/javascript/d3-master/d3.min.js"></script>
<script src="/html-example/javascript/d3plus-master/d3plus.min.js"></script>
<script type="text/javascript">
	var datas = [
		{"value": 40, "name": "name0", "group": "group 1"},
		{"value": 30, "name": "name1", "group": "group 1"},
		{"value": 20, "name": "name2", "group": "group 1"},
		{"value": 10, "name": "name3", "group": "group 1"},
		{"value": 30, "name": "name1", "group": "group 2"},
		{"value": 30, "name": "name2", "group": "group 2"},
		{"value": 20, "name": "name3", "group": "group 2"},
		{"value": 10, "name": "name4", "group": "group 2"},
		{"value": 10, "name": "name5", "group": "group 2"},
		{"value": 80, "name": "name0", "group": "group 3"},
		{"value": 15, "name": "name1", "group": "group 3"},
		{"value": 5, "name": "name2", "group": "group 3"},
	];
	
	var visualization = d3plus.viz()
		.container("#viz")
		.data(datas)
		.type("bubbles")
		.id(["group", "name"])
		.depth(1)
		.size("value")
		.color("group")
		.draw();

</script>
</html>