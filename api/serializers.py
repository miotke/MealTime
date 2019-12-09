from rest_framework import serializers
from .models import Meal


class MealTimeSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = Meal
        fields = ('meal_name', 'details', 'sides', 'price')
