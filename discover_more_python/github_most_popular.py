import requests

request_headers = {
  'User-Agent': 'Holberton_School',
  'Authorization': 'token b28c7b657c6fd8ba06b3d8bb7bf1835d1f50b40f'
}

r = requests.get('https://api.github.com/search/repositories?q=language:python&sort=stars&order=desc', request_headers)

print r.content
