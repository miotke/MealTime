from django.db import models


class Response():
    pass

class Meal(models.Model):
    """ Creates a Meal model to interact with """

    SIDES_CHOICES = [
        ('chips', 'Chips'),
        ('fries', 'Fries'),
        ('soup', 'Soup of the day'),
        ('veggies', 'Assorted Veggies'),
        ('bread', 'Bread'),
        ('rice', 'Rice'),
        ('none', 'None'),
        ('other', 'Other'),
    ]

    RATING = [
        ('1', '1'),
        ('2', '2'),
        ('3', '3'),
        ('4', '4'),
        ('5', '5'),
    ]

    # I do understand that having emoji in code is not the best practice
    # but in cases like this it's more declaritive than the unicode characters
    EMOJI = [
        ('🍔', '🍔'),
        ('🌯', '🌯'),
        ('🌮', '🌮'),
        ('🍕', '🍕'),
        ('🥗', '🥗'),
        ('🍗', '🍗'),
        ('🥪', '🥪'),
        ('🎣', '🎣'),
    ]


    meal_name = models.CharField(max_length=50)
    sides = models.CharField(max_length=20, choices=SIDES_CHOICES, default='none')
    details = models.CharField(max_length=256)
    price = models.DecimalField(max_digits=4, decimal_places=2)
    rating = models.CharField(max_length=5, choices=RATING, default='NOT_PROVIDED')
    emoji = models.CharField(max_length=10, choices=EMOJI, default='🍽')

    def __str__(self):
        return self.meal_name


class Dessert(models.Model):

    dessert_name = models.CharField(max_length=50)
    details = models.CharField(max_length=50)
    price = models.DecimalField(max_digits=4, decimal_places=2)


    def __str__(self):
        return self.dessert_name


class Drink(models.Model):

    drink_name = models.CharField(max_length=50)
    price = models.DecimalField(max_digits=4, decimal_places=2)


    def __str__(self):
        return self.drink_name
