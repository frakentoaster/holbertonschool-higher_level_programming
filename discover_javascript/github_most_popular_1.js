var https = require('https');

var options = {
    hostname: 'api.github.com',
    path: '/search/repositories?q=language:javascript&sort=stars&order=desc',
    headers: {
	'User-Agent': 'Holberton_School',
	'Authorization': 'token 58d7730b72d5e9ee5abe4484958359ccb67aa53a'
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
