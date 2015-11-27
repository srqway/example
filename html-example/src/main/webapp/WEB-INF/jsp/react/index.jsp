<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>React Index</title>
<script src="/html-example/javascript/react-0.14.3/build/react.js"></script>
<script src="/html-example/javascript/react-0.14.3/build/react-dom.js"></script>
</head>
<body>

	<div id="content"></div>

	<script>
		var CommentBox = React.createClass({
			displayName : 'CommentBox',
			render : function() {
				return (React.createElement('div', {
					className : "commentBox"
				}, "Hello, world! I am a CommentBox."));
			}
		});
		ReactDOM.render(React.createElement(CommentBox, null), document
				.getElementById('content'));
	</script>

</body>
</html>