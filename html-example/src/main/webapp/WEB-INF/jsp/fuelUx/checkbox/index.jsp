<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>checkbox</title>
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="/html-example/javascript/fuelux-master/dist/css/fuelux.min.css">
<script src="/html-example/javascript/jquery-2.1.4/jquery-2.1.4.min.js"></script>
<script
	src="/html-example/javascript/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>
<script
	src="/html-example/javascript/fuelux-master/dist/js/fuelux.min.js"></script>
</head>
<body class="fuelux">
	<h5>disable</h5>
	<div class="checkbox">
		<label class="checkbox-custom" data-initialize="checkbox"> 
			<input type="checkbox" value=""> 
			<span class="checkbox-label">Custom checkbox unchecked on page load</span>
		</label>
	</div>
	<div class="checkbox">
	  <label class="checkbox-custom checked" data-initialize="checkbox">
	    <input type="checkbox" checked="checked"  value="">
	    <span class="checkbox-label">Custom checkbox checked on page load</span>
	  </label>
	</div>
	<div class="checkbox">
	  <label class="checkbox-custom" data-initialize="checkbox">
	    <input type="checkbox" disabled="disabled" value="">
	    <span class="checkbox-label">Disabled custom checkbox unchecked on page load</span>
	  </label>
	</div>
	<div class="checkbox">
	  <label class="checkbox-custom" data-initialize="checkbox">
	    <input type="checkbox" checked="checked" disabled="disabled" value="">
	    <span class="checkbox-label">Disabled custom checkbox checked on page load</span>
	  </label>
	</div>
	<hr>
	<h5>inline</h5>
	<label class="checkbox-custom checkbox-inline" data-initialize="checkbox">
	  <input type="checkbox" value=""> 
	  <span class="checkbox-label">1</span>
	</label>
	<label class="checkbox-custom checkbox-inline" data-initialize="checkbox">
	  <input type="checkbox" checked="checked" value=""> 
	  <span class="checkbox-label">2</span>
	</label>
	<label class="checkbox-custom checkbox-inline" data-initialize="checkbox">
	  <input disabled="disabled" type="checkbox" value=""> 
	  <span class="checkbox-label">3</span>
	</label>
	<hr>
	<h5>addon</h5>
	<div class="input-group">
		<label class="input-group-addon checkbox-custom checkbox-inline" data-initialize="checkbox"> 
			<input type="checkbox" value="">
		</label> 
		<input type="text" class="form-control">
	</div>
	<hr>
	<h5>toggle</h5>
	<div class="checkbox">
	  <label class="checkbox-custom" data-initialize="checkbox">
	    <input type="checkbox" data-toggle="#checkboxToggleId" value="">
	    <span class="checkbox-label">Toggles element with matching ID</span>
	  </label>
	</div>
	<label class="checkbox-custom checkbox-inline" data-initialize="checkbox">
	  <input type="checkbox" data-toggle=".checkboxToggleClass" value="">
	  <span class="checkbox-label">Toggles elements with matching class.</span>
	</label>
	<div class="alert bg-info" id="checkboxToggleId">ID toggling container</div>
	<div class="alert bg-success checkboxToggleClass">Class toggling container</div>
	<div class="alert bg-success checkboxToggleClass">Class toggling container</div>
	<hr>
	<h5>highlight</h5>
	<div class="checkbox highlight">
	  <label class="checkbox-custom highlight" data-initialize="checkbox">
	    <input type="checkbox" value="">
	    <span class="checkbox-label">This control highlights a block-level checkbox on check</span>
	  </label>
	</div>
	<label class="checkbox-custom checkbox-inline highlight" data-initialize="checkbox">
	  <input type="checkbox" value="">
	  <span class="checkbox-label">This control highlights an inline checkbox on check</span>
	</label>

</body>
</html>