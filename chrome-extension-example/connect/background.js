chrome.runtime.onConnect.addListener(function(port) {
	port.onMessage.addListener(function(response) {
		console.log(response);
		port.postMessage({
			content : "background.js sendResponse"
		});
	});
});