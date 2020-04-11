# Generated by Django 3.0 on 2020-04-11 19:15

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0010_meal_emoji'),
    ]

    operations = [
        migrations.AlterField(
            model_name='meal',
            name='emoji',
            field=models.CharField(choices=[('🍔', '🍔'), ('🌯', '🌯'), ('🌮', '🌮'), ('🍕', '🍕'), ('🥗', '🥗'), ('🍗', '🍗'), ('🥪', '🥪'), ('🎣', '🎣')], default='🍽', max_length=10),
        ),
        migrations.AlterField(
            model_name='meal',
            name='rating',
            field=models.CharField(choices=[('1', '1'), ('2', '2'), ('3', '3'), ('4', '4'), ('5', '5')], default='NOT_PROVIDED', max_length=5),
        ),
    ]
