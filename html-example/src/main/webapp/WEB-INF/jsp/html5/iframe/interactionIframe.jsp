<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>interaction iframe</title>
</head>
<body>
	<h1>interaction iframe</h1>
	<form action="#" id="interactionIframe">
		<p>
			<input name="display" size="30" readonly="readonly" type="text">
		</p>
		<p>
			<input name="button1" value="Click Me" type="button"> to see
			offsetHeight of iframe element containing this document.
		</p>
		<p>
			<input name="button2" value="Click Me" type="button">
			repeatedly to increment global variable in containing document.
		</p>
		<p>
			<input name="button3" value="Click Me" type="button"> to
			transfer Greeting below to text box above.
		</p>
		<p>
			<input name="button4" value="Click Me" type="button"> to
			empty Greeting text box below (calls function in parent).
		</p>
	</form>
</body>
<script type="text/javascript">
	// to remove from global namespace
	(function() {
		var form = document.getElementById('interactionIframe');
		form.elements.button1.onclick = function() {
			this.form.elements.display.value = window.frameElement.offsetHeight;
		}
		form.elements['button2'].onclick = function() {
			var counter = ++parent.counter;
			this.form.elements['display'].value = counter;
		}
		form.elements.button3.onclick = function() {
			var greeting = parent.document.forms['greetingForm'].elements['greeting'].value;
			this.form.elements.display.value = greeting;
		}
		form.elements.button4.onclick = function() {
			parent.clearGreeting();
		}
		// disable submission of all forms on this page
		for (var i = 0, len = document.forms.length; i < len; i++) {
			document.forms[i].onsubmit = function() {
				return false;
			};
		}
	}()); // end remove from global namespace and invoke
</script>
</html>