define([ "jquery" ], function($) {
	return {
		color : "red",
		toRed : function(id) {
			$(id).css({
				'background-color' : this.color
			});
		}
	}
});