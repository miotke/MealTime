""" Small Python script to test accessing the Meal api """

import requests

url = 'http://127.0.0.1:8000/meals'

response = requests.get(url)

print(response.text)
