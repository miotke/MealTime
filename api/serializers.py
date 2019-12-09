from rest_framework import serializers
from .models import Meal
from .models import Dessert


class MealTimeSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = Meal
        fields = ('meal_name', 'details', 'sides', 'price')


class DessertSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = Dessert
        fields = ('dessert_name', 'details', 'price')
