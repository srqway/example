document.addEventListener("DOMContentLoaded", function() {
	var sendToExtensionButton = document.getElementById("sendToExtension");
	sendToExtensionButton.addEventListener('click', function(e) {
		chrome.runtime.sendMessage({
			content : "popup.js chrome.runtime.sendMessage"
		}, function(response) {
			console.log(response);
		});
	});

	var sendToContentButton = document.getElementById("sendToContent");
	sendToContentButton.addEventListener('click', function() {
		chrome.tabs.query({
			active : true,
			currentWindow : true
		}, function(tabs) {
			chrome.tabs.sendMessage(tabs[0].id, {
				content : "popup.js chrome.tabs.sendMessage"
			}, function(response) {
				console.log(response);
			});
		});
	});
});