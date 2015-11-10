<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css</title>
<style type="text/css">
.ellipsis {
	overflow: hidden;
	position: relative;
	height: 200px;
	line-height: 25px;
}

.ellipsis:before {
	content: "";
	float: left;
	width: 5px;
	height: 200px;
}

.ellipsis>*:first-child {
	float: right;
	width: 100%;
	margin-left: -5px;
}

.ellipsis:after {
	content: "\02026 more";
	-webkit-box-sizing: content-box;
	-moz-box-sizing: content-box;
	box-sizing: content-box;
	float: right;
	position: relative;
	top: -25px;
	left: 100%;
	width: 7em;
	margin-left: -7em;
	padding-right: 5px;
	text-align: right;
	background-size: 100% 100%;
	/* 1706x1 image, gradient for IE9. Transparent at 0% -> white at 15% -> white at 100%.*/
	background-image:
		url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAABqoAAAABCAMAAACRxg/eAAAABGdBTUEAALGPC/xhBQAAAwBQTFRF////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////AAAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wDWRdwAAAP90Uk5Tfet1sDrNWZIeSRDcocCFLWj1CbhSfuMl1EGoYJkYM8Zui/rwBk15FefYKrxGtKydZQzfIdDJNj1VpFyVcY6BBBwxw2yI/Pfy7RInQ09ie5B0eIMDD+kb5eEk2tbSMMs5QL66tkyyrqpYpl+fm5drAf0H+AoN8+4TFhkf3SIoKwDONDfHO8Q+wURHSlBTVlqiXWNmaZNvcox2iYZ/fAL+9vsFCPkL9A4R8e/sFOjqFxrm5B3i4CDeIybb2SnX1SzT0S/PMsw1yjjIxTzCP79CvbtFuUi3tUuzTrGvUa1Uq6lXp6Vbo16gYZ6cZJpnmJZqlG2RcI9zjYp6d4eChIAu7+D8pQAAASFJREFUOMtjqK+fG2y/UKVwkVDxEsOSZSFcyz3LV6tXrJOtXB/msImjaqtxzfZI8R1etbu16vbx/zsY63hYrvGoWdPxeJaWU+ZtZxIkz3l3XNTpvMzZdS1F9YZP922RnrsWvQ8y2PoeW014miX93HfiK4NJbwQmv89z/qgw9bPNtK8BTDN+Bqr98JvDIDr7r93voD98s365zPyuOP2b7Rf/T+xTPli/y30r8zrnpf6L7Gc8/U8sH2U+lLqffk/vTtot5pup13WvJl8RvpR0Qft84lne9tNOrSflm0+YHos7wtpwyORAzH6JvdF7NHdF7eSu3ma0JWKz2MbwDRprQtcyrvIoW6m8wr10qeB8t6LFSgtcC+b9HwWjYBSMglEw2AEA3ckkQdBniOMAAAAASUVORK5CYII=);
	background: -webkit-gradient(linear, left top, right top, from(rgba(255, 255, 255, 0
		)), to(white), color-stop(15%, white));
	background: -moz-linear-gradient(to right, rgba(255, 255, 255, 0), white
		15%, white);
	background: -o-linear-gradient(to right, rgba(255, 255, 255, 0), white
		15%, white);
	background: -ms-linear-gradient(to right, rgba(255, 255, 255, 0), white
		15%, white);
	background: linear-gradient(to right, rgba(255, 255, 255, 0), white 15%,
		white);
}

.ellipsis a {
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: hidden;
	text-indent: -9999px;
}

.ellipsis i, .ellipsis:after {
	font-style: normal;
	color: blue;
}

/* .ellipsis i:before { */
/* 	content: "more"; */
/* } */
.ellipsisContent {
	margin: 0;
	padding: 0;
}
</style>
<script src="/html-example/javascript/jquery-2.1.4/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
	$(function() {
		$(".ellipsisMore").on("click", function() {
			alert("more");
		});
	});
</script>
</head>
<body>
	<div class="ellipsis">
		<div>
			<p class="ellipsisContent">
				aaaaa bbbbb ccccc ddddd eeeee fffff ggggg hhhhh iiiii jjjjj kkkkk
				lllll mmmmm nnnnn ooooo ppppp qqqqq rrrrr sssss ttttt uuuuu vvvvv
				wwwww xxxxx yyyyy zzzzz aaaaa bbbbb ccccc ddddd eeeee fffff ggggg
				hhhhh iiiii jjjjj kkkkk lllll mmmmm nnnnn ooooo ppppp qqqqq rrrrr
				sssss ttttt uuuuu vvvvv wwwww xxxxx yyyyy zzzzz aaaaa bbbbb ccccc
				ddddd eeeee fffff ggggg hhhhh iiiii jjjjj kkkkk lllll mmmmm nnnnn
				ooooo ppppp qqqqq rrrrr sssss ttttt uuuuu vvvvv wwwww xxxxx yyyyy
				zzzzz aaaaa bbbbb ccccc ddddd eeeee fffff ggggg hhhhh iiiii jjjjj
				kkkkk lllll mmmmm nnnnn ooooo ppppp qqqqq rrrrr sssss ttttt uuuuu
				vvvvv wwwww xxxxx yyyyy zzzzz <i></i>
			</p>
		</div>
		<a class="ellipsisMore" href="javascript:void(0);">more</a>
	</div>
</body>
</html>