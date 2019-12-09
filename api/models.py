from django.db import models


class Hero(models.Model):
    """ Creates a Hero model to interact with """

    name = models.CharField(max_length=50)
    alias = models.CharField(max_length=50)


    def __str__(self):
        return self.name
