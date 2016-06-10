<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bootstrap Iframe</title>
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="/html-example/javascript/Font-Awesome-master/css/font-awesome.min.css">
<script src="/html-example/javascript/jquery-2.1.4/jquery-2.1.4.min.js"></script>
<script
	src="/html-example/javascript/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function() {
		var height = $(document).height();
		$("#iframe").attr("height", height);
	});
</script>
</head>
<body>
	<div class="row">
		<div class="col-lg-9 col-md-12 col-sm-12">
			<iframe id="iframe" style="border: none; width: 100%;"
				src="http://www.w3schools.com"> </iframe>
		</div>
		<div class="form-group col-lg-3 col-md-12 col-sm-12">
			<div class="panel panel-primary">
				<div class="panel-heading">Panel Heading</div>
				<div class="panel-body">
					<div class="form-group col-lg-12 col-md-12 col-sm-12">
						<label class="control-label col-xs-3" for="text">text</label>
						<div class="col-xs-9">
							<input type="text" class="form-control" id="text"
								placeholder="text">
						</div>
					</div>
					<div class="form-group col-lg-12 col-md-12 col-sm-12">
						<div class="col-xs-9"></div>
						<div class="col-xs-3">
							<span class="fa fa-plus-square fa-2x text-success"></span>
						</div>
					</div>
				</div>
				<div class="panel-footer">
					<input type="button" class="btn btn-warning" value="submit">
				</div>
			</div>

		</div>
	</div>
</body>
</html>