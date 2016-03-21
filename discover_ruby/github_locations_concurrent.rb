require 'HTTPClient'
require 'json'
require 'net/http'

extheaders = {
  'User-Agent' => 'Holberton_School',
  'Authorization' => 'token 914b7070c282e25764284a8375e636a4302ac5d7'
}
# create simple client
http = HTTPClient.new
# retrieve content from specified URL
request = http.get_content('https://api.github.com/search/repositories?q=language:ruby&sort=stars&order=desc')
# parse json response
json = JSON.parse(request)
# iterate through parsed json outputting owner locations
res = []
owner_loc = json["items"].map do |i|
	Thread.new do
		origin = i["owner"]["url"]
		owner_hash = JSON.parse(http.get_content(origin, nil, extheaders))
		{full_name: i["full_name"], location: owner_hash["location"]}
	end
end
puts owner_loc.to_json
