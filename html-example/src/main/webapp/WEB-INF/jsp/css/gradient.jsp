<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css gradient</title>
<style type="text/css">
#background_linear_gradient_red_blue {
	height: 100px;
	background: -webkit-linear-gradient(red, blue);
	background: -o-linear-gradient(red, blue);
	background: -moz-linear-gradient(red, blue);
	background: linear-gradient(red, blue);
}

#background_linear_gradient_to_right_red_blue {
	height: 100px;
	background: -webkit-linear-gradient(left, red, blue);
	background: -o-linear-gradient(right, red, blue);
	background: -moz-linear-gradient(right, red, blue);
	background: linear-gradient(to right, red, blue);
}

#background_linear_gradient_-90deg_red_blue {
	height: 100px;
	background: -webkit-linear-gradient(-90deg, red, blue);
	background: -o-linear-gradient(-90deg, red, blue);
	background: -moz-linear-gradient(-90deg, red, blue);
	background: linear-gradient(-90deg, red, blue);
}

#background_linear_gradient_red_orange_yellow_green_blue_indigo_violet {
	height: 100px;
	background: -webkit-linear-gradient(red, orange, yellow, green, blue, indigo, violet
		);
	background: -o-linear-gradient(red, orange, yellow, green, blue, indigo, violet);
	background: -moz-linear-gradient(red, orange, yellow, green, blue, indigo, violet);
	background: linear-gradient(red, orange, yellow, green, blue, indigo, violet);
}

#background_linear_gradient_to_right_red_orange_yellow_green_blue_indigo_violet
	{
	height: 100px;
	background: -webkit-linear-gradient(left, red, orange, yellow, green, blue, indigo,
		violet);
	background: -o-linear-gradient(left, red, orange, yellow, green, blue, indigo,
		violet);
	background: -moz-linear-gradient(left, red, orange, yellow, green, blue, indigo,
		violet);
	background: linear-gradient(to right, red, orange, yellow, green, blue, indigo,
		violet);
}

#background_linear_gradient_to_right_rgba_255_0_0_0_rgba_255_0_0_1 {
	height: 100px;
	background: -webkit-linear-gradient(left, rgba(255, 0, 0, 0),
		rgba(255, 0, 0, 1));
	background: -o-linear-gradient(right, rgba(255, 0, 0, 0),
		rgba(255, 0, 0, 1));
	background: -moz-linear-gradient(right, rgba(255, 0, 0, 0),
		rgba(255, 0, 0, 1));
	background: linear-gradient(to right, rgba(255, 0, 0, 0),
		rgba(255, 0, 0, 1));
}

#background_repeating_linear_gradient_red_yellow_10_green_20 {
	height: 100px;
	background: -webkit-repeating-linear-gradient(red, yellow 10%, green 20%);
	background: -o-repeating-linear-gradient(red, yellow 10%, green 20%);
	background: -moz-repeating-linear-gradient(red, yellow 10%, green 20%);
	background: repeating-linear-gradient(red, yellow 10%, green 20%);
}

#background_radial_gradient_red_green_blue {
	height: 100px;
	background: -webkit-radial-gradient(red, green, blue);
	background: -o-radial-gradient(red, green, blue);
	background: -moz-radial-gradient(red, green, blue);
	background: radial-gradient(red, green, blue);
	background: -o-radial-gradient(red, green, blue);
	background: -moz-radial-gradient(red, green, blue);
}

#background_radial_gradient_red_5_green_15_blue_60 {
	height: 100px;
	background: -webkit-radial-gradient(red 5%, green 15%, blue 60%);
	background: -o-radial-gradient(red 5%, green 15%, blue 60%);
	background: -moz-radial-gradient(red 5%, green 15%, blue 60%);
	background: radial-gradient(red 5%, green 15%, blue 60%);
}

#background_radial_gradient_circle_red_yellow_green {
	height: 100px;
	background: -webkit-radial-gradient(circle, red, yellow, green);
	background: -o-radial-gradient(circle, red, yellow, green);
	background: -moz-radial-gradient(circle, red, yellow, green);
	background: radial-gradient(circle, red, yellow, green);
}

#background_radial_gradient_closest_side_at_80_80_blue_green_yellow_black
	{
	height: 100px;
	background: -webkit-radial-gradient(80% 80%, closest-side, blue, green, yellow,
		black);
	background: -o-radial-gradient(80% 80%, closest-side, blue, green, yellow, black);
	background: -moz-radial-gradient(80% 80%, closest-side, blue, green, yellow, black);
	background: radial-gradient(closest-side at 80% 80%, blue, green, yellow, black);
}

#background_repeating_radial_gradient_red_yellow_10_green_15 {
	height: 100px;
	background: -webkit-repeating-radial-gradient(red, yellow 10%, green 15%);
	background: -o-repeating-radial-gradient(red, yellow 10%, green 15%);
	background: -moz-repeating-radial-gradient(red, yellow 10%, green 15%);
	background: repeating-radial-gradient(red, yellow 10%, green 15%);
}
</style>
</head>
<body>
	<div id="background_linear_gradient_red_blue"></div>
	<br>
	<div id="background_linear_gradient_to_right_red_blue"></div>
	<br>
	<div id="background_linear_gradient_-90deg_red_blue"></div>
	<br>
	<div
		id="background_linear_gradient_red_orange_yellow_green_blue_indigo_violet"></div>
	<br>
	<div
		id="background_linear_gradient_to_right_red_orange_yellow_green_blue_indigo_violet"></div>
	<br>
	<div
		id="background_linear_gradient_to_right_rgba_255_0_0_0_rgba_255_0_0_1"></div>
	<br>
	<div id="background_repeating_linear_gradient_red_yellow_10_green_20"></div>
	<br>
	<div id="background_radial_gradient_red_green_blue"></div>
	<br>
	<div id="background_radial_gradient_red_5_green_15_blue_60"></div>
	<br>
	<div id="background_radial_gradient_circle_red_yellow_green"></div>
	<br>
	<div
		id="background_radial_gradient_closest_side_at_80_80_blue_green_yellow_black"></div>
	<br>
	<div id="background_repeating_radial_gradient_red_yellow_10_green_15"></div>
	<br>
</body>
</html>