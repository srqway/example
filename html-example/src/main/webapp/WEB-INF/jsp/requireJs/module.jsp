<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>require.js module</title>
<script src="/html-example/javascript/requirejs-master/require.js"></script>
<script>
	require([ '/html-example/javascript/test/requireJsInline.js' ], function() {
		require([ 'jquery', '_module' ], function($, _module) {
			$('#toRed').on('click', function() {
				_module.toRed("#testArea");
			});
		});
	});
</script>
</head>
<body>
	<div id="testArea" style="background-color: green">test area</div>
	<input id="toRed" type="button" value="toRed">
</body>
</html>