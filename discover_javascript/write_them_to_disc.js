var https = require('https');
var fs = require('fs')

var options = {
    hostname: 'api.github.com',
    path: '/search/repositories?q=language:javascript&sort=stars\
&order=desc',
    headers: {
	'User-Agent': 'Holberton_School',
	'Authorization': 'token 58d7730b72d5e9ee5abe4484958359cc\
b67aa53a'
    }
}

var request = https.request(options, function(res) {
    streamToString (res, (jsonString) => {
	console.log("The file was saved!");
	fs.writeFile('/tmp/21', jsonString, function (err) {
	    if (err) return console.log(err);
	});
    });
});
request.end();

request.on('error', function(e) {
    console.error(e);
});

function streamToString(stream, cb) {
    const chunks = [];
    stream.on('data', (chunk) => {
	chunks.push(chunk);
    });
    stream.on('end', () => {
	cb(chunks.join(''));
    });
}

