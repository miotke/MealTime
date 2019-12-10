from django.shortcuts import render
from rest_framework import viewsets
from .serializers import MealTimeSerializer
from .serializers import DessertSerializer
from .serializers import DrinkSerializer
from .models import Meal
from .models import Dessert
from .models import Drink

class MealViewSet(viewsets.ModelViewSet):
    queryset = Meal.objects.all().order_by('meal_name')
    serializer_class = MealTimeSerializer


class DessertViewSet(viewsets.ModelViewSet):
    queryset = Dessert.objects.all().order_by('dessert_name')
    serializer_class = DessertSerializer


class DrinkViewSet(viewsets.ModelViewSet):
    queryset = Drink.objects.all().order_by('drink_name')
    serializer_class = DrinkSerializer
