<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css image sprite</title>
<style type="text/css">
#home {
    width: 46px;
    height: 43px;
    background: url('/html-example/image/img_navsprites_hover.gif') 0 0;
}

#home:hover {
	background: url('/html-example/image/img_navsprites_hover.gif') 0 -46px;
}

#navlist {
    position: relative;
}

#navlist li {
    margin: 0;
    padding: 0;
    list-style: none;
    position: absolute;
    top: 0;
}

#navlist li, #navlist a {
    height: 44px;
    display: block;
}

#prev {
	left: 0px;
    width: 42px;
    background: url('/html-example/image/img_navsprites_hover.gif') -47px 0;
}

#next {
    left: 66px;
    width: 42px;
    background: url('/html-example/image/img_navsprites_hover.gif') -92px 0;
}

#prev a:hover {
    background: url('/html-example/image/img_navsprites_hover.gif') -47px -46px;
}

#next a:hover {
    background: url('/html-example/image/img_navsprites_hover.gif') -92px -46px;
}
</style>
</head>
<body>
	<div id="home"></div>
	<ul id="navlist">
		<li id="prev"><a href="javascript:void(0);"></a></li>
		<li id="next"><a href="javascript:void(0);"></a></li>
	</ul>
</body>
</html>