# Generated by Django 2.2 on 2019-05-02 06:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app1', '0017_auto_20190501_1340'),
    ]

    operations = [
        migrations.AddField(
            model_name='flasdata',
            name='username',
            field=models.CharField(default='admin', max_length=30),
        ),
    ]
