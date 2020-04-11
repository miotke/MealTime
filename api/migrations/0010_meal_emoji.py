# Generated by Django 3.0 on 2020-04-11 18:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0009_auto_20200410_2322'),
    ]

    operations = [
        migrations.AddField(
            model_name='meal',
            name='emoji',
            field=models.CharField(choices=[('burger', '🍔'), ('burrito', '🌯'), ('tacos', '🌮'), ('pizza', '🍕'), ('salad', '🥗'), ('chicken', '🍗'), ('sandwich', '🥪'), ('fish', '🎣')], default='🍽', max_length=10),
        ),
    ]
