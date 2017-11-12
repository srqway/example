function print(info, tab) {
	console.log("menuItemId : " + info.menuItemId);
	console.log("parentMenuItemId : " + info.parentMenuItemId);
	console.log("mediaType : " + info.mediaType);
	console.log("linkUrl : " + info.linkUrl);
	console.log("srcUrl : " + info.srcUrl);
	console.log("pageUrl : " + info.pageUrl);
	console.log("frameUrl : " + info.frameUrl);
	console.log("frameId : " + info.frameId);
	console.log("selectionText : " + info.selectionText);
	console.log("editable : " + info.editable);
	console.log("wasChecked : " + info.wasChecked);
	console.log("checked : " + info.checked);
}

function createContextMenus() {
	var level_0 = chrome.contextMenus.create({
		"documentUrlPatterns" : [ "https://www.google.com.tw/*" ],
		"title" : "you select : '%s'",
		"contexts" : [ 'all' ],
		"onclick" : print
	});

	var normal = chrome.contextMenus.create({
		"title" : "normal",
		"type" : "normal",
		"contexts" : [ 'all' ],
		"parentId" : level_0,
		"onclick" : print
	});

	var checkbox = chrome.contextMenus.create({
		"title" : "checkbox",
		"type" : "checkbox",
		"contexts" : [ 'all' ],
		"parentId" : level_0,
		"onclick" : print
	});

	var separator_0 = chrome.contextMenus.create({
		"title" : "separator_0",
		"type" : "separator",
		"contexts" : [ 'all' ],
		"parentId" : level_0
	});

	var radio_0_0 = chrome.contextMenus.create({
		"title" : "radio_0_0",
		"type" : "radio",
		"contexts" : [ 'all' ],
		"parentId" : level_0,
		"onclick" : print
	});

	var radio_0_1 = chrome.contextMenus.create({
		"title" : "radio_0_1",
		"type" : "radio",
		"contexts" : [ 'all' ],
		"parentId" : level_0,
		"onclick" : print
	});

	var separator_1 = chrome.contextMenus.create({
		"title" : "separator_1",
		"type" : "separator",
		"contexts" : [ 'all' ],
		"parentId" : level_0
	});

	var radio_1_0 = chrome.contextMenus.create({
		"title" : "radio_1_0",
		"type" : "radio",
		"contexts" : [ 'all' ],
		"parentId" : level_0,
		"onclick" : print
	});

	var radio_1_1 = chrome.contextMenus.create({
		"title" : "radio_1_1",
		"type" : "radio",
		"contexts" : [ 'all' ],
		"parentId" : level_0,
		"onclick" : print
	});

}

createContextMenus();
