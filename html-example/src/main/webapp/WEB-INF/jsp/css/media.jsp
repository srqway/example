<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css media</title>
<link rel="stylesheet" media="screen and (min-width: 480px)"
	href="/html-example/css/css-media.css">
<style type="text/css">
@media screen and (min-width: 480px) {
	#background-color_red {
		background-color: red;
	}
}

@media screen and (min-width: 480px) {
	#background_url_email_icon_png_left_center_no_repeat {
		padding-left: 30px;
		background: url('/html-example/image/email-icon.png') left center no-repeat;
	}
}

@media screen and (min-width: 961px) {
    #background_url_email_icon_png_left_center_no_repeat:before {
        content: "email: ";
        color: green;
    }
}
</style>
</head>
<body>
	<div id="background-color_red">@media screen and (min-width:
		480px)</div>
	<hr>
	<div id="background-color_yellow">screen and (min-width: 480px)</div>
	<hr>
	<a id="background_url_email_icon_png_left_center_no_repeat"
		data-email="somebody@gmail.com" href="mailto:somebody@gmail.com">somebody@gmail.com</a>
	<hr>
</body>
</html>