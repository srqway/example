<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>css video</title>
<style type="text/css">
video {
	width: 100%;
	height: auto;
}
</style>
</head>
<body>
	<video controls>
		<source src="'/html-example/video/mov_bbb.mp4" type="video/mp4">
		<source src="/html-example/video/mov_bbb.ogg" type="video/ogg">
		Your browser does not support HTML5 video.
	</video>
</body>
</html>