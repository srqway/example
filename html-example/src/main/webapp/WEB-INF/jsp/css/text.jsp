<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css text</title>
<style type="text/css">
#text-align_justify {
	width: 300px;
	border: 1px solid black;
	text-align: justify;
}

#text-decoration_overline {
    text-decoration: overline;
}

#text-decoration_line-through {
    text-decoration: line-through;
}

#text-decoration_underline {
    text-decoration: underline;
}

#text-transform_uppercase {
    text-transform: uppercase;
}

#text-transform_lowercase {
    text-transform: lowercase;
}

#text-transform_capitalize {
    text-transform: capitalize;
}

#text-indent_50px {
    text-indent: 50px;
}

#letter-spacing_5px {
    letter-spacing: 5px;
}

#word-spacing_20px {
    word-spacing: 20px;
}

#line-height_0_7 {
    line-height: 0.7;
}

#direction_rtl {
    direction: rtl;
}

#text-shadow_2px_2px_4px_000000 {
    color: white;
    text-shadow: 2px 2px 4px #000000;
}

#white-space_nowrap {
    white-space: nowrap;
}
</style>
</head>
<body>
	<div id="text-align_justify">This is text-align:justify test. This is text-align:justify
		test. This is text-align:justify test. This is text-align:justify
		test. This is text-align:justify test. This is text-align:justify
		test. This is text-align:justify test. This is text-align:justify
		test. This is text-align:justify test. This is text-align:justify
		test. This is text-align:justify test. This is text-align:justify
		test.</div>
	<br>
	<div id="text-decoration_overline">text-decoration: overline;</div>
	<div id="text-decoration_line-through">text-decoration: line-through;</div>
	<div id="text-decoration_underline">text-decoration: underline;</div>
	<br>
	<div id="text-transform_uppercase">text-transform: uppercase;</div>
	<div id="text-transform_lowercase">TEXT-TRANSFORM: LOWERCASE;</div>
	<div id="text-transform_capitalize">text-transform: capitalize;</div>
	<br>
	<div id="text-indent_50px">text-indent: 50px;</div>
	<br>
	<div id="letter-spacing_5px">letter-spacing: 5px;</div>
	<br>
	<div id="word-spacing_20px">word-spacing: 20px; word-spacing: 20px; word-spacing: 20px; word-spacing: 20px; word-spacing: 20px;</div>
	<br>
	<div id="line-height_0_7">
		line-height: 0.7;<br>
		line-height: 0.7;<br>
		line-height: 0.7;<br>
	</div>
	<br>
	<div id="direction_rtl">direction: rtl; direction: rtl; direction: rtl;</div>
	<br>
	<div id="text-shadow_2px_2px_4px_000000">text-shadow: 2px 2px 4px #000000;</div>
	<br>
	<div id="white-space_nowrap">
		This is white-space: nowrap;
		This is white-space: nowrap;
		This is white-space: nowrap;
		This is white-space: nowrap;
		This is white-space: nowrap;
		This is white-space: nowrap;
		This is white-space: nowrap;
		This is white-space: nowrap;
		This is white-space: nowrap;
		This is white-space: nowrap;
		This is white-space: nowrap;
		This is white-space: nowrap;
		This is white-space: nowrap;
		This is white-space: nowrap;
		This is white-space: nowrap;
	</div>
	<br>
</body>
</html>