chrome.runtime.onMessage.addListener(function(message, sender, sendResponse) {
	console.log(message);
	sendResponse({
		content : "content.js sendResponse"
	});
});