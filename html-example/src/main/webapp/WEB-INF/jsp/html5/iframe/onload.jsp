<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>onload</title>
<body>
	<form id="demoForm" action="#">
		<p>
			<input name="button1" value="Button 1" type="button"> sets iframe style height <br>
			<input name="button2" value="Button 2" type="button"> increments global variable in iframed document<br>
			<input name="button3" value="Button 3" type="button"> transfers Greeting below to Display text box above<br>
			<input name="button4" value="Button 4" type="button"> clears Greeting text box below (calls function in iframe)<br>
		</p>
		<p>
			Display: <input name="display" size="30" readonly="readonly"
				type="text">
		</p>
	</form>
	<iframe name="ifrm" id="ifrm" src="onloadIframe"></iframe>
	<script type="text/javascript">
		// attach handlers once iframe is loaded
		document.getElementById('ifrm').onload = function() {
			var form = document.getElementById('demoForm');
			form.elements.button1.onclick = function() {
				var ifrm = document.getElementById('ifrm');
				var ht = ifrm.style.height = '300px';
				this.form.elements.display.value = ht;
			}
			form.elements['button2'].onclick = function() {
				var win = document.getElementById('ifrm').contentWindow;
				var counter = ++win.counter;
				this.form.elements['display'].value = counter;
			}
			form.elements.button3.onclick = function() {
				var ifrm = document.getElementById('ifrm');
				var doc = ifrm.contentDocument ? ifrm.contentDocument
						: ifrm.contentWindow.document;
				var fld = doc.forms['iframeDemoForm'].elements['greeting'];
				this.form.elements.display.value = fld.value;
			}
			form.elements.button4.onclick = function() {
				var win = document.getElementById('ifrm').contentWindow;
				win.clearGreeting();
			}
		};
		(function() {
			// disable submission of all forms on this page
			for (var i = 0, len = document.forms.length; i < len; i++) {
				document.forms[i].onsubmit = function() {
					return false;
				};
			}
		}());
	</script>
</body>
</html>