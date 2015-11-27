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
<script src="/html-example/javascript/babel-core-5.8.23/browser.min.js"></script>
</head>
<body>

    <div id="example"></div>
    <script type="text/babel">
      ReactDOM.render(
        <h1>Hello, world!</h1>,
        document.getElementById('example')
      );
    </script>
    
</body>
</html>