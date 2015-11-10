<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css color</title>
<style type="text/css">
#border-image_url_30_round {
	border: 10px solid transparent;
	-webkit-border-image: url(/html-example/image/border.png) 30 round;
	-o-border-image: url(/html-example/image/border.png) 30 round;
	border-image: url(/html-example/image/border.png) 30 round;
}

#background-color_rgba_255_0_0_03 {
	background-color: rgba(255, 0, 0, 0.3);
}

#background-color_hsl_120_50_50 {
	background-color: hsl(120, 50%, 50%);
}

#background-color_hsla_240_50_50_03 {
	background-color: hsla(240, 50%, 50%, 0.3);
}
</style>
</head>
<body>
	<p id="background-color_rgba_255_0_0_03">background-color:
		rgba(255, 0, 0, 0.5);</p>
	<p id="background-color_hsl_120_50_50">background-color: hsl(120,
		50%, 50%);</p>
	<p id="background-color_hsla_240_50_50_03">background-color:
		hsla(240, 50%, 50%, 0.3);</p>
</body>
</html>