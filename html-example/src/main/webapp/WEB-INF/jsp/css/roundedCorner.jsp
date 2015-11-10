<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css rounded corner</title>
<style type="text/css">
#border-radius_25px {
	border-radius: 25px;
	background: red;
	width: 10em;
	height: 10em;
}

#border-radius_15px_50px_30px_5px {
	border-radius: 15px 50px 30px 5px;
	background: yellow;
	width: 10em;
	height: 10em;
}

#border-radius_50px_15px {
	border-radius: 50px/15px;
	background: blue;
	width: 10em;
	height: 10em;
}

#border-radius_50 {
	border-radius: 50%;
	background: green;
	width: 10em;
	height: 10em;
}
</style>
</head>
<body>
	<p id="border-radius_25px">border-radius: 25px;</p>
	<p id="border-radius_15px_50px_30px_5px">border-radius: 15px 50px
		30px 5px;</p>
	<p id="border-radius_50px_15px">border-radius: 50px/15px;</p>
	<p id="border-radius_50">border-radius: 50%;</p>
</body>
</html>