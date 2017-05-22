// Pa11y script for TestUI - create test page
'use strict';

var pa11y = require('../..');

// html reporter
var htmlReporter = require('../../reporter/html');

// Create a test instance with some default options
var test = pa11y({

	// Log what's happening to the console
	log: {
		debug: console.log.bind(console),
		error: console.error.bind(console),
		info: console.log.bind(console)
	},

	// wait before running tests
	wait: '500',

	// take screenshot
	screenCapture: 'screenshots' + '/createTest.png'

});

// Test http://example.com/
var baseUrl = process.env.BASEURL
var url = baseUrl + '/testui/home'
test.run(url, function(error, result) {
	if (error) {
		return console.error(error.message);
	}
    var html = htmlReporter.process(result, url);
	console.log(html);
});
