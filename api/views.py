from django.shortcuts import render
from rest_framework import viewsets
from .serializers import MealTimeSerializer
from .models import Meal


class MealViewSet(viewsets.ModelViewSet):
    queryset = Meal.objects.all().order_by('meal_name')
    serializer_class = MealTimeSerializer
