# Generated by Django 3.0 on 2019-12-29 19:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0006_drink'),
    ]

    operations = [
        migrations.AlterField(
            model_name='drink',
            name='drink_name',
            field=models.CharField(max_length=50),
        ),
        migrations.AlterField(
            model_name='meal',
            name='sides',
            field=models.CharField(choices=[('chips', 'Chips'), ('soup', 'Soup of the day'), ('veggies', 'Assorted Veggies'), ('bread', 'Bread'), ('rice', 'Rice'), ('none', 'None'), ('other', 'Other')], default='none', max_length=20),
        ),
    ]
