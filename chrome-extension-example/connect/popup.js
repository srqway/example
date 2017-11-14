document.addEventListener("DOMContentLoaded", function() {
	var sendToExtensionPort = chrome.runtime.connect();
	sendToExtensionPort.onMessage.addListener(function(response) {
		console.log(response);
	});
	var sendToExtensionButton = document.getElementById("sendToExtension");
	sendToExtensionButton.addEventListener('click', function() {
		sendToExtensionPort.postMessage({
			content : "popup.js sendToExtensionPort.postMessage"
		});
	});
});