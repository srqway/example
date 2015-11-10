<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css animation</title>
<style type="text/css">
#animation-name_animation_0 {
	width: 20em;
	height: 10em;
    background-color: red;
    -webkit-animation-name: animation_0; 
    animation-name: animation_0;
    -webkit-animation-duration: 4s;
    animation-duration: 4s;
}
@-webkit-keyframes animation_0 {
    from {background-color: red;}
    to {background-color: yellow;}
}
@keyframes animation_0 {
    from {background-color: red;}
    to {background-color: yellow;}
}

#animation-name_animation_1 {
	width: 20em;
	height: 10em;
    background-color: red;
    -webkit-animation-name: animation_1; 
    animation-name: animation_1;
    -webkit-animation-duration: 4s;
    animation-duration: 4s;
}
@-webkit-keyframes animation_1 {
    0%   {background-color: red;}
    25%  {background-color: yellow;}
    50%  {background-color: blue;}
    100% {background-color: green;}
}
@keyframes animation_1 {
    0%   {background-color: red;}
    25%  {background-color: yellow;}
    50%  {background-color: blue;}
    100% {background-color: green;}
}

#animation-name_animation_2 {
	width: 20em;
	height: 10em;
    background-color: red;
	position: relative;
    -webkit-animation-name: animation_2; 
    animation-name: animation_2;
    -webkit-animation-duration: 4s;
    animation-duration: 4s;
}
@-webkit-keyframes animation_2 {
    0%   {background-color:red; left:0px; top:0px;}
    25%  {background-color:yellow; left:200px; top:0px;}
    50%  {background-color:blue; left:200px; top:200px;}
    75%  {background-color:green; left:0px; top:200px;}
    100% {background-color:red; left:0px; top:0px;}
}
@keyframes animation_2 {
    0%   {background-color:red; left:0px; top:0px;}
    25%  {background-color:yellow; left:200px; top:0px;}
    50%  {background-color:blue; left:200px; top:200px;}
    75%  {background-color:green; left:0px; top:200px;}
    100% {background-color:red; left:0px; top:0px;}
}

#animation-name_animation_3 {
	width: 20em;
	height: 10em;
    background-color: red;
	position: relative;
    -webkit-animation-name: animation_3; 
    animation-name: animation_3;
    -webkit-animation-duration: 4s;
    animation-duration: 4s;
    animation-delay: 1s;
}
@-webkit-keyframes animation_3 {
    0%   {background-color:red; left:0px; top:0px;}
    25%  {background-color:yellow; left:200px; top:0px;}
    50%  {background-color:blue; left:200px; top:200px;}
    75%  {background-color:green; left:0px; top:200px;}
    100% {background-color:red; left:0px; top:0px;}
}
@keyframes animation_3 {
    0%   {background-color:red; left:0px; top:0px;}
    25%  {background-color:yellow; left:200px; top:0px;}
    50%  {background-color:blue; left:200px; top:200px;}
    75%  {background-color:green; left:0px; top:200px;}
    100% {background-color:red; left:0px; top:0px;}
}

#animation-name_animation_4 {
	width: 20em;
	height: 10em;
    background-color: red;
	position: relative;
    -webkit-animation-name: animation_4; 
    animation-name: animation_4;
    -webkit-animation-duration: 4s;
    animation-duration: 4s;
    animation-iteration-count: infinite;
}
@-webkit-keyframes animation_4 {
    0%   {background-color:red; left:0px; top:0px;}
    25%  {background-color:yellow; left:200px; top:0px;}
    50%  {background-color:blue; left:200px; top:200px;}
    75%  {background-color:green; left:0px; top:200px;}
    100% {background-color:red; left:0px; top:0px;}
}
@keyframes animation_4 {
    0%   {background-color:red; left:0px; top:0px;}
    25%  {background-color:yellow; left:200px; top:0px;}
    50%  {background-color:blue; left:200px; top:200px;}
    75%  {background-color:green; left:0px; top:200px;}
    100% {background-color:red; left:0px; top:0px;}
}

#animation-name_animation_5 {
	width: 20em;
	height: 10em;
    background-color: red;
	position: relative;
    -webkit-animation-name: animation_5; 
    animation-name: animation_5;
    -webkit-animation-duration: 4s;
    animation-duration: 4s;
    animation-direction: reverse;
}
@-webkit-keyframes animation_5 {
    0%   {background-color:red; left:0px; top:0px;}
    25%  {background-color:yellow; left:200px; top:0px;}
    50%  {background-color:blue; left:200px; top:200px;}
    75%  {background-color:green; left:0px; top:200px;}
    100% {background-color:red; left:0px; top:0px;}
}
@keyframes animation_5 {
    0%   {background-color:red; left:0px; top:0px;}
    25%  {background-color:yellow; left:200px; top:0px;}
    50%  {background-color:blue; left:200px; top:200px;}
    75%  {background-color:green; left:0px; top:200px;}
    100% {background-color:red; left:0px; top:0px;}
}

#animation-name_animation_6 {
	width: 20em;
	height: 10em;
    background-color: red;
	position: relative;
    -webkit-animation-name: animation_6; 
    animation-name: animation_6;
    -webkit-animation-duration: 4s;
    animation-duration: 4s;
    animation-iteration-count: infinite;
    animation-direction: alternate;
}
@-webkit-keyframes animation_6 {
    0%   {background-color:red; left:0px; top:0px;}
    25%  {background-color:yellow; left:200px; top:0px;}
    50%  {background-color:blue; left:200px; top:200px;}
    75%  {background-color:green; left:0px; top:200px;}
    100% {background-color:red; left:0px; top:0px;}
}
@keyframes animation_6 {
    0%   {background-color:red; left:0px; top:0px;}
    25%  {background-color:yellow; left:200px; top:0px;}
    50%  {background-color:blue; left:200px; top:200px;}
    75%  {background-color:green; left:0px; top:200px;}
    100% {background-color:red; left:0px; top:0px;}
}

#animation-name_animation_7 {
	width: 20em;
	height: 10em;
    background-color: red;
	position: relative;
    -webkit-animation-name: animation_7; 
    animation-name: animation_7;
    -webkit-animation-duration: 4s;
    animation-duration: 4s;
    -webkit-animation-timing-function: linear;	/* linear, ease, ease-in, ease-out, ease-in-out */
    animation-timing-function: linear;	/* linear, ease, ease-in, ease-out, ease-in-out */
}
@-webkit-keyframes animation_7 {
    0%   {background-color:red; left:0px; top:0px;}
    25%  {background-color:yellow; left:200px; top:0px;}
    50%  {background-color:blue; left:200px; top:200px;}
    75%  {background-color:green; left:0px; top:200px;}
    100% {background-color:red; left:0px; top:0px;}
}
@keyframes animation_7 {
    0%   {background-color:red; left:0px; top:0px;}
    25%  {background-color:yellow; left:200px; top:0px;}
    50%  {background-color:blue; left:200px; top:200px;}
    75%  {background-color:green; left:0px; top:200px;}
    100% {background-color:red; left:0px; top:0px;}
}
</style>
</head>
<body>
<!-- 	<div id="animation-name_animation_0"></div> -->
<!-- 	<hr> -->
<!-- 	<div id="animation-name_animation_1"></div> -->
<!-- 	<hr> -->
<!-- 	<div id="animation-name_animation_2"></div> -->
<!-- 	<hr> -->
<!-- 	<div id="animation-name_animation_3"></div> -->
<!-- 	<hr> -->
<!-- 	<div id="animation-name_animation_4"></div> -->
<!-- 	<hr> -->
<!-- 	<div id="animation-name_animation_5"></div> -->
<!-- 	<hr> -->
<!-- 	<div id="animation-name_animation_6"></div> -->
<!-- 	<hr> -->
	<div id="animation-name_animation_7"></div>
	<hr>
</body>
</html>