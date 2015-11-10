<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css border image</title>
<style type="text/css">
#border-image_url_30_round {
	border: 10px solid transparent;
	border-image: url(/html-example/image/border.png) 30 round;
	-webkit-border-image: url(/html-example/image/border.png) 30 round;
	-o-border-image: url(/html-example/image/border.png) 30 round;
}

#border-image_url_30_stretch {
	border: 10px solid transparent;
	border-image: url(/html-example/image/border.png) 30 stretch;
	-webkit-border-image: url(/html-example/image/border.png) 30 stretch;
	-o-border-image: url(/html-example/image/border.png) 30 stretch;
}
</style>
</head>
<body>
	<p id="border-image_url_30_round">border-image:
		url(/html-example/image/border.png) 30 round;</p>
	<p id="border-image_url_30_stretch">border-image:
		url(/html-example/image/border.png) 30 stretch;</p>
</body>
</html>