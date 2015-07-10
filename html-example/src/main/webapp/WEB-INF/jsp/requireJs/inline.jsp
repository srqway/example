<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>require.js inline</title>
<script src="/html-example/javascript/requirejs-master/require.js"></script>
<script>
	require([ '/html-example/javascript/test/requireJsInline.js' ], function() {
		require([ 'hello' ], function(hello) {
			require([ 'async' ], function(async) {
				alert('requireJsInline');
			});
		});
	});
</script>
</head>
<body>

</body>
</html>