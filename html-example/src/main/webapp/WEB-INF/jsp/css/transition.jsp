<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css transition</title>
<style type="text/css">
#transition_width_2s {
	width: 20em;
	height: 10em;
	background-color: red;
	-webkit-transition: width 2s;
	transition: width 2s;
}
#transition_width_2s:hover {
	width: 40em;
}

#transition_width_2s_height_4s {
	width: 20em;
	height: 10em;
	background-color: yellow;
    -webkit-transition: width 2s, height 4s;
    transition: width 2s, height 4s;
}
#transition_width_2s_height_4s:hover {
	width: 40em;
	height: 40em;
}

#transition-timing-function_linear {
	width: 20em;
	height: 10em;
	background-color: blue;
	-webkit-transition: width 2s;
	transition: width 2s;
	-webkit-transition-timing-function: linear;	/* linear, ease, ease-in, ease-out, ease-in-out */
	transition-timing-function: linear;	/* linear, ease, ease-in, ease-out, ease-in-out */
}
#transition-timing-function_linear:hover {
	width: 40em;
}

#transition-delay_1s {
	width: 20em;
	height: 10em;
	background-color: green;
	-webkit-transition: width 2s;
	transition: width 2s;
    -webkit-transition-delay: 1s;
    transition-delay: 1s;
}
#transition-delay_1s:hover {
	width: 40em;
}

#transition_width_2s_height_2s_transform_2s {
	width: 20em;
	height: 10em;
	background-color: red;
    -webkit-transition: width 2s, height 2s, -webkit-transform 2s;
    transition: width 2s, height 2s, transform 2s;
}
#transition_width_2s_height_2s_transform_2s:hover {
	width: 40em;
	height: 20em;
    -webkit-transform: rotate(180deg);
    transform: rotate(180deg);
}

</style>
</head>
<body>
	<div id="transition_width_2s">transition: width 2s;</div>
	<br>
	<div id="transition_width_2s_height_4s">transition: width 2s, height 4s;</div>
	<br>
	<div id="transition-timing-function_linear">transition-timing-function: linear;</div>
	<br>
	<div id="transition-delay_1s">transition-delay: 1s;</div>
	<br>
	<div id="transition_width_2s_height_2s_transform_2s">transition: width 2s, height 2s, transform 2s;</div>
	<br>
</body>
</html>