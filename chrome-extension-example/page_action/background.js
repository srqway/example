var rule = {
	conditions : [ new chrome.declarativeContent.PageStateMatcher({
		pageUrl : {
			schemes : [ 'https', 'http' ],
			hostEquals : 'www.google.com.tw'
		}
	}) ],
	actions : [ new chrome.declarativeContent.ShowPageAction() ]
};
chrome.runtime.onInstalled.addListener(function(details) {
	chrome.declarativeContent.onPageChanged.removeRules(undefined, function() {
		chrome.declarativeContent.onPageChanged.addRules([ rule ]);
	});
});