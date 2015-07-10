requirejs.config({
	baseUrl : '/html-example/javascript/',
	paths : {
		async : 'test/async',
		defer : 'test/defer',
		hello : 'test/hello'
	}
});

require([ 'async', 'defer', 'hello' ], function(async, defer, hello) {
	alert("requireJsParameter");
});