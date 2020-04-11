# Generated by Django 3.0 on 2020-04-10 23:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0008_auto_20200410_2311'),
    ]

    operations = [
        migrations.AlterField(
            model_name='meal',
            name='details',
            field=models.CharField(max_length=256),
        ),
        migrations.AlterField(
            model_name='meal',
            name='sides',
            field=models.CharField(choices=[('chips', 'Chips'), ('fries', 'Fries'), ('soup', 'Soup of the day'), ('veggies', 'Assorted Veggies'), ('bread', 'Bread'), ('rice', 'Rice'), ('none', 'None'), ('other', 'Other')], default='none', max_length=20),
        ),
    ]