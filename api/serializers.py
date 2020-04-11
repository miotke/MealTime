from rest_framework import serializers
from .models import Meal
from .models import Dessert
from .models import Drink
from .models import Response

class ResponseSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Response


class MealTimeSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = Meal

        fields = ('meal_name', 'details', 'sides', 'price', 'rating', 'emoji')


class DessertSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = Dessert
        fields = ('dessert_name', 'details', 'price')


class DrinkSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = Drink
        fields = ('drink_name', 'price')
