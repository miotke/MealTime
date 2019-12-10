""" Small Python script to test accessing the Meal api """

import requests

meal_url = 'http://127.0.0.1:8000/meals'
dessert_url = 'http://127.0.0.1:8000/desserts/'
drink_url = 'http://127.0.0.1:8000/drinks/'

meal_response = requests.get(meal_url)
dessert_response = requests.get(dessert_url)
drink_response = requests.get(drink_url)

print(meal_response.text)
print(dessert_response.text)
print(drink_response.text)
