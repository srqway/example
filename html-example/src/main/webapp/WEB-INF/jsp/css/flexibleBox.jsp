<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css flexible box</title>
<style type="text/css">
#display_flex {
	display: -webkit-flex;
	display: flex;
	width: 50em;
	height: 50em;
	background-color: red;
}

#flex-direction_row_reverse {
	display: -webkit-flex;
	display: flex;
	-webkit-flex-direction: row-reverse;
	flex-direction: row-reverse;
	width: 50em;
	height: 50em;
	background-color: red;
}

#flex-direction_column {
	display: -webkit-flex;
	display: flex;
	-webkit-flex-direction: column;
	flex-direction: column;
	width: 50em;
	height: 50em;
	background-color: red;
}

#flex-direction_column-reverse {
	display: -webkit-flex;
	display: flex;
	-webkit-flex-direction: column-reverse;
	flex-direction: column-reverse;
	width: 50em;
	height: 50em;
	background-color: red;
}

#justify-content_center {
	display: -webkit-flex;
	display: flex;
	/* flex-start/flex-end/center/space-between/space-around */
	-webkit-justify-content: center;
	justify-content: center;
	width: 50em;
	height: 50em;
	background-color: red;
}

#align-items_center {
	display: -webkit-flex;
	display: flex;
	/* stretch/flex-start/flex-end/center/baseline */
	-webkit-align-items: center;
	align-items: center;
	width: 50em;
	height: 50em;
	background-color: red;
}

#flex-wrap_wrap {
    display: -webkit-flex;
    display: flex;
	/* nowrap/wrap/wrap-reverse */
    -webkit-flex-wrap: wrap;
    flex-wrap: wrap;
	width: 50em;
	height: 50em;
	background-color: red;
}

#align-content_center {
    display: -webkit-flex;
    display: flex;
    -webkit-flex-wrap: wrap;
    flex-wrap: wrap;
	/* stretch/flex-start/flex-end/center/space-between/space-around */
    -webkit-align-content: center;
    align-content: center;
	width: 50em;
	height: 50em;
	background-color: red;
}

.item {
	width: 8em;
	height: 8em;
	margin: 5em;
	background-color: green;
}

.wider_item {
	width: 15em;
	height: 8em;
	margin: 5em;
	background-color: green;
}

.item_-1 {
    -webkit-order: -1;
    order: -1;
}

.margin-right_auto_item {
    margin-right: auto;
}

.align-self_flex-start_item {
	/* flex-start;/flex-end/center/baseline/stretch */
    -webkit-align-self: flex-start;
    align-self: flex-start;
}

.align-self_flex-end_item {
	/* flex-start;/flex-end/center/baseline/stretch */
    -webkit-align-self: flex-end;
    align-self: flex-end;
}

.align-self_center_item {
	/* flex-start;/flex-end/center/baseline/stretch */
    -webkit-align-self: center;
    align-self: center;
}

.flex_2_item {
    -webkit-flex: 2;
    flex: 2;
}

.flex_1_item {
    -webkit-flex: 1;
    flex: 1;
}

</style>
</head>
<body>
	<div id="display_flex">
		<div class="item">display: flex; 0</div>
		<div class="item">display: flex; 1</div>
		<div class="item">display: flex; 2</div>
	</div>
	<hr>
	<div id="display_flex">
		<div class="item">order: -1; 0</div>
		<div class="item item_-1">order: -1; 1</div>
		<div class="item">order: -1; 2</div>
	</div>
	<hr>
	<div id="display_flex">
		<div class="item margin-right_auto_item">margin-right: auto; 0</div>
		<div class="item">margin-right: auto; 1</div>
		<div class="item">margin-right: auto; 2</div>
	</div>
	<hr>
	<div id="display_flex">
		<div class="item align-self_flex-start_item">align-self: flex-start; 0</div>
		<div class="item align-self_flex-end_item">align-self: flex-end; 1</div>
		<div class="item align-self_center_item">align-self: center; 2</div>
	</div>
	<hr>
	<div id="display_flex">
		<div class="item flex_2_item">flex: 2; 0</div>
		<div class="item flex_1_item">flex: 1; 1</div>
		<div class="item flex_1_item">flex: 1; 2</div>
	</div>
	<hr>
	<div id="flex-direction_row_reverse">
		<div class="item">flex-direction: row-reverse; 0</div>
		<div class="item">flex-direction: row-reverse; 1</div>
		<div class="item">flex-direction: row-reverse; 2</div>
	</div>
	<hr>
	<div id="flex-direction_column">
		<div class="item">flex-direction: column; 0</div>
		<div class="item">flex-direction: column; 1</div>
		<div class="item">flex-direction: column; 2</div>
	</div>
	<hr>
	<div id="flex-direction_column-reverse">
		<div class="item">flex-direction: column-reverse; 0</div>
		<div class="item">flex-direction: column-reverse; 1</div>
		<div class="item">flex-direction: column-reverse; 2</div>
	</div>
	<hr>
	<div id="justify-content_center">
		<div class="item">justify-content: center; 0</div>
		<div class="item">justify-content: center; 1</div>
		<div class="item">justify-content: center; 2</div>
	</div>
	<hr>
	<div id="align-items_center">
		<div class="item">align-items: center; 0</div>
		<div class="item">align-items: center; 1</div>
		<div class="item">align-items: center; 2</div>
	</div>
	<hr>
	<div id="flex-wrap_wrap">
		<div class="wider_item">flex-wrap: wrap; 0</div>
		<div class="wider_item">flex-wrap: wrap; 1</div>
		<div class="wider_item">flex-wrap: wrap; 2</div>
	</div>
 	<hr>
	<div id="align-content_center">
		<div class="wider_item">align-content: center; 0</div>
		<div class="wider_item">align-content: center; 1</div>
		<div class="wider_item">align-content: center; 2</div>
	</div>
	
</body>
</html>