chrome.commands.onCommand.addListener(function(command) {
	if (command == "change_background_color") {
		chrome.tabs.executeScript({
			code : 'document.body.style.backgroundColor="red"'
		});
	}
});