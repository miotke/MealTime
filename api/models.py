from django.db import models


class Meal(models.Model):
    """ Creates a Meal model to interact with """

    SIDES_CHOICES = [
        ('chips', 'Chips'),
        ('soup', 'Soup of the day'),
        ('veggies', 'Assorted Veggies'),
        ('bread', 'Bread'),
    ]


    meal_name = models.CharField(max_length=50)
    sides = models.CharField(max_length=20, choices=SIDES_CHOICES, default='chips')
    details = models.CharField(max_length=50)
    price = models.DecimalField(max_digits=4, decimal_places=2)


    def __str__(self):
        return self.meal_name
