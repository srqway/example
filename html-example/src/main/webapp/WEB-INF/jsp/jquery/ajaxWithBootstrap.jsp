<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<button type="button" class="btn btn-default">${chinese}</button>
<button type="button" class="btn btn-primary">${chinese}</button>
<button type="button" class="btn btn-success">${chinese}</button>
<button type="button" class="btn btn-info">${chinese}</button>
<button type="button" class="btn btn-warning">${chinese}</button>
<button type="button" class="btn btn-danger">${chinese}</button>
<button type="button" class="btn btn-link">${chinese}</button>
<script type="text/javascript">
	$(function() {
		$(".btn").on("click", function() {
			$(this).html("");
		});
	});
</script>