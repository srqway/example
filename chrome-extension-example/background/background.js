chrome.browserAction.onClicked.addListener(function(tab) {
	chrome.tabs.insertCSS(tab.id, {
		file : "inserted.css"
	});
	chrome.tabs.executeScript(tab.id, {
		file : "inserted.js"
	});
});
