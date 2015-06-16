<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>colorbox</title>
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/html-example/javascript/bootstrap-3.3.2-dist/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="/html-example/javascript/colorbox-master/example5/colorbox.css">
<script src="/html-example/javascript/jquery-2.1.4/jquery-2.1.4.min.js"></script>
<script src="/html-example/javascript/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>
<script src="/html-example/javascript/colorbox-master/jquery.colorbox-min.js"></script>
</head>
<body>
	<h5>Group</h5>
	<a class="group" href="/html-example/image/1.png">png_1</a> / 
	<a class="group" href="/html-example/image/2.png">png_2</a> / 
	<a class="group" href="/html-example/image/3.jpg">jpg_3</a>
	<script type="text/javascript">
		$(function() {
			$(".group").colorbox({rel:'group', transition:"none", width:"75%", height:"75%"});
		});
	</script>
	<hr>
	<h5>Ajax</h5>
	<a class='ajax' href="ajax">ajax</a>
	<script type="text/javascript">
	$(function() {
		$(".ajax").colorbox();
	});
	</script>
	<hr>
	<h5>Flash / Video</h5>
	<a class='youtube' href="http://www.youtube.com/embed/VOJyrQa_WR4?rel=0&amp;wmode=transparent">youtube</a>
	<script type="text/javascript">
	$(function() {
		$(".youtube").colorbox({iframe:true, innerWidth:700, innerHeight:400});
	});
	</script>
	<hr>
	<h5>Flash / Video</h5>
	<a class='iframe' href="http://wikipedia.com">iframe</a>
	<script type="text/javascript">
	$(function() {
		$(".iframe").colorbox({iframe:true, width:"80%", height:"80%"});
	});
	</script>
	<hr>
	<h5>Inline</h5>
	<a class='inline' href="#inlineContent">Inline HTML</a>
	<div style='display:none'>
		<div id='inlineContent'>
		This is inline content.
		<a class="ajax" href="ajax">Click here to load new content</a></p>
		</div>
	</div>
	<script type="text/javascript">
	$(function() {
		$(".inline").colorbox({inline:true, width:"50%"});
	});
	</script>
	<hr>
	<h5>Callbacks</h5>
	<a class='callbacks' href="/html-example/image/3.jpg">callbacks</a>
	<script type="text/javascript">
	$(function() {
		$(".callbacks").colorbox({
			onOpen:function(){ alert('on Open'); },
			onLoad:function(){ alert('on Load'); },
			onComplete:function(){ alert('on Complete'); },
			onCleanup:function(){ alert('on Cleanup'); },
			onClosed:function(){ alert('on Closed'); }
		});
	});
	</script>
	<hr>
	<h5>Retina</h5>
	<a class="retina" href="/html-example/image/3.jpg">retina</a>
	<script type="text/javascript">
	$(function() {
		$('.retina').colorbox({retinaImage:true, retinaUrl:true});
	});
	</script>
</body>
</html>