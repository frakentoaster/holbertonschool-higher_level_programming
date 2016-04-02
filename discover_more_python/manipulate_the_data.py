import requests
import json
# function to parse json and print specific field
request_headers = {
  'User-Agent': 'Holberton_School',
  'Authorization': 'token b28c7b657c6fd8ba06b3d8bb7bf1835d1f50b40f'
}

r = requests.get('https://api.github.com/search/repositories?q=language:python&sort=stars&order=desc', request_headers)
c = r.content
j = json.loads(c)

for k in j['items']:
		print k['full_name']
