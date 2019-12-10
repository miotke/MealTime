from django.contrib import admin
from .models import Meal
from .models import Dessert
from .models import Drink

# Registers the Meal model with Django admin
admin.site.register(Meal)
admin.site.register(Dessert)
admin.site.register(Drink)
