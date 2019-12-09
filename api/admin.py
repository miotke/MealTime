from django.contrib import admin
from .models import Meal
from .models import Dessert

# Registers the Meal model with Django admin
admin.site.register(Meal)
admin.site.register(Dessert)
