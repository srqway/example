<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bootstrap Select</title>
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-select-master/dist/css/bootstrap-select.min.css">
<style type="text/css">
.special {
	font-style: italic;
	font-weight: bold !important;
	color: #bc0000 !important;
	background: #000;
}
</style>
<script src="/html-example/javascript/jquery-2.1.4/jquery-2.1.4.min.js"></script>
<script
	src="/html-example/javascript/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>
<script
	src="/html-example/javascript/bootstrap-select-master/dist/js/bootstrap-select.min.js"></script>
<script
	src="/html-example/javascript/bootstrap-select-master/dist/js/i18n/defaults-zh_TW.min.js"></script>
</head>
<body>
	<h3>1</h3>
	<select class="selectpicker" title="Please select one">
		<option>item 1</option>
		<option>item 2</option>
		<option>item 3</option>
	</select>
	<hr>
	<h3>2</h3>
	<select class="selectpicker">
		<optgroup label="label 1">
			<option>item 1-1</option>
			<option>item 1-2</option>
			<option>item 1-3</option>
		</optgroup>
		<optgroup label="label 2">
			<option>item 2-1</option>
			<option>item 2-2</option>
			<option>item 2-3</option>
		</optgroup>
	</select>
	<hr>
	<h3>3</h3>
	<select class="selectpicker" multiple data-max-options="2">
		<option>item 1</option>
		<option>item 2</option>
		<option>item 3</option>
	</select>
	<hr>
	<h3>4</h3>
	<select class="selectpicker" multiple data-max-options="2">
		<optgroup label="lable 1" data-max-options="2">
			<option>item 1-1</option>
			<option>item 1-2</option>
			<option>item 1-3</option>
		</optgroup>
		<optgroup label="label 2" data-max-options="2">
			<option>item 2-1</option>
			<option>item 2-2</option>
			<option>item 2-3</option>
		</optgroup>
	</select>
	<hr>
	<h3>5</h3>
	<select class="selectpicker" data-style="btn-success">
		<option>item 1</option>
		<option>item 2</option>
		<option>item 3</option>
	</select>
	<hr>
	<h3>6</h3>
	<select class="selectpicker" data-live-search="true">
		<option>item 1</option>
		<option>item 2</option>
		<option>item 3</option>
	</select>
	<hr>
	<h3>7</h3>
	<select class="selectpicker" multiple data-selected-text-format="count">
		<option>item 1</option>
		<option>item 2</option>
		<option>item 3</option>
	</select>
	<hr>
	<h3>8</h3>
	<select class="selectpicker" multiple data-selected-text-format="count>2">
		<option>item 1</option>
		<option>item 2</option>
		<option>item 3</option>
	</select>
	<hr>
	<h3>9</h3>
	<select class="selectpicker show-tick">
		<option>item 1</option>
		<option>item 2</option>
		<option>item 3</option>
	</select>
	<hr>
	<h3>10</h3>
	<select class="selectpicker show-menu-arrow">
		<option>item 1</option>
		<option>item 2</option>
		<option>item 3</option>
	</select>
	<hr>
	<h3>11</h3>
	<select class="selectpicker">
		<option>item 1</option>
		<option class="special">item 2</option>
		<option>item 3</option>
	</select>
	<hr>
	<h3>12</h3>
	<div class="row-fluid">
		<select class="selectpicker">
			<option>item 1</option>
			<option>item 2</option>
			<option>item 3</option>
		</select>
		<select class="selectpicker">
			<option>item 1</option>
			<option>item 2</option>
			<option>item 3</option>
		</select>
	</div>
	<hr>
	<h3>13</h3>
	<div class="row-fluid">
		<select class="selectpicker" data-width="auto">
			<option>item 1</option>
			<option>item 2</option>
			<option>item 3</option>
		</select>
		<select class="selectpicker" data-width="100px">
			<option>item 1</option>
			<option>item 2</option>
			<option>item 3</option>
		</select>
		<select class="selectpicker" data-width="75%">
			<option>item 1</option>
			<option>item 2</option>
			<option>item 3</option>
		</select>
	</div>
	<hr>
	<h3>14</h3>
	<select class="selectpicker" disabled="disabled">
		<option>item 1</option>
		<option>item 2</option>
		<option>item 3</option>
	</select>
	<hr>
	<h3>15</h3>
	<select class="selectpicker">
		<option>item 1</option>
		<option disabled="disabled">item 2</option>
		<option>item 3</option>
	</select>
	<hr>
	<h3>16</h3>
	<select class="selectpicker" data-size="2">
		<option>item 1</option>
		<option>item 2</option>
		<option>item 3</option>
	</select>
	<hr>
	<h3>17</h3>
	<select class="selectpicker">
		<option>item 1</option>
		<option>item 2</option>
		<option data-divider="true"></option>
		<option>item 3</option>
	</select>
	<hr>
	<h3>18</h3>
	<select class="selectpicker">
		<option data-icon="glyphicon-heart">item 1</option>
		<option data-icon="glyphicon-heart">item 2</option>
		<option data-icon="glyphicon-heart">item 3</option>
	</select>
	<hr>
	<h3>19</h3>
	<select class="selectpicker">
		<option data-content="<span class='label label-success'>success</span>"></option>
		<option data-content="<span class='label label-info'>info</span>"></option>
		<option data-content="<span class='label label-primary'>primary</span>"></option>
		<option data-content="<span class='label label-warning'>warning</span>"></option>
		<option data-content="<span class='label label-danger'>danger</span>"></option>
	</select>
	<hr>
	<h3>20</h3>
	<div style="overflow:hidden;">
		<select class="selectpicker">
			<option>item 1</option>
			<option>item 2</option>
			<option>item 3</option>
		</select>
		<select class="selectpicker" data-container="body">
			<option>item 1</option>
			<option>item 2</option>
			<option>item 3</option>
		</select>
		<br>
		<br>
    </div>
    <hr>
	<h3>21</h3>
	<select class="selectpicker dropup">
		<option>item 1</option>
		<option>item 2</option>
		<option>item 3</option>
	</select>
	<hr>
</body>
</html>