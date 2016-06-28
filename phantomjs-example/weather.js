var page = require('webpage').create();
page.open('https://weather.com/zh-TW/weather/hourbyhour/l/TWXX0021:1:TW', function(status) {
  console.log("Status: " + status);
  if(status === "success") {
    var tr = page.evaluate(function() {
      return document.getElementById('twc-scrollable').getElementsByTagName('table')[0]
      	.getElementsByTagName('thead')[0].getElementsByTagName('tr')[0];
    });
    for (i = 0, size = tr.length; i < size; ++i) { 
        text += cars[i] + "<br>";
    }
    console.log(ua);
  }
  phantom.exit();
});