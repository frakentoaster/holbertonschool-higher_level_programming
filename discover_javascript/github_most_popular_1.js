var https = require('https');

var options = {
    hostname: 'api.github.com',
    path: '/search/repositories?q=language:javascript&sort=stars&order=desc',
    headers: {
	'User-Agent': 'Holberton_School',
	'Authorization': 'token ' + process.env.TOKEN
    }
}

var request = https.request(options, function(res) {
    res.on('data', function(d) {
	process.stdout.write(d);
    });
});
request.end();

request.on('error', function(e) {
    console.error(e);
});

