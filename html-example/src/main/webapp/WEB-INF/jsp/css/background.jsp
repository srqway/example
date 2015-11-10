<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css background</title>
<style type="text/css">
body {
	background-image: url("/html-example/image/1.png");
	background-size: 5em 5em;
	background-repeat: no-repeat;
	background-position: right bottom;
	background-attachment: fixed;
}

#multiple_backgrounds {
	background-image: url("/html-example/image/img_flwr.gif"),
		url("/html-example/image/paper.gif");
	background-position: right bottom, left top;
	background-repeat: no-repeat, repeat;
	background-size: 30em 30em;
	background-repeat: no-repeat, repeat;
	width: 50em;
	height: 50em;
}

#background-size_contain {
	background: url("/html-example/image/img_flwr.gif");
	width: 50em;
	height: 50em;
	background-repeat: no-repeat;
	background-size: contain;
}

#background-size_cover {
	background: url("/html-example/image/img_flwr.gif");
	width: 50em;
	height: 50em;
	background-repeat: no-repeat;
	background-size: cover;
}

</style>
</head>
<body>
	<div id="multiple_backgrounds">background-image:
		url("/html-example/image/img_flwr.gif"),
		url("/html-example/image/paper.gif");</div>
	<div id="background-size_contain">background-size: contain;</div>
	<div id="background-size_cover">background-size: cover;</div>
</body>
</html>