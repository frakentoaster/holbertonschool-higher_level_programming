require 'HTTPClient'
require 'json'
require 'thread'

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

result = []
thread = []
# iterate through parsed json outputting owner locations
owner_loc = json["items"].map do |i|
	origin = i["owner"]["url"]
	thread << Thread.new(origin, extheaders) do
		owners = JSON.parse(http.get_content(origin, nil, extheaders))
		result << {full_name: i["full_name"], location: owners["location"]}
	end
end

thread.each { |t| t.join }
puts result.to_json
