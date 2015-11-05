<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>d3plus rings</title>
</head>
<body>
	<div id="viz" style="width: 100%; height: 500px;"></div>
</body>
<script src="/html-example/javascript/d3-master/d3.min.js"></script>
<script src="/html-example/javascript/d3plus-master/d3plus.min.js"></script>
<script type="text/javascript">
	var datas = [
		{"source": "alpha", "target": "beta", "strength": 1.25},
		{"source": "alpha", "target": "gamma", "strength": 2.463},
		{"source": "beta", "target": "delta", "strength": 0.823},
		{"source": "beta", "target": "epsilon", "strength": 1.563},
  		{"source": "zeta", "target": "gamma", "strength": 3.125},
		{"source": "theta", "target": "gamma", "strength": 0.732},
		{"source": "eta", "target": "gamma", "strength": 2.063}
	];
	
	var visualization = d3plus.viz()
		.container("#viz")
		.type("rings")
		.edges({
	      "size": "strength",
	      "value": datas
	    })
		.focus("alpha")
		.draw();

</script>
</html>