# Generated by Django 2.2 on 2019-04-28 09:05

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('app1', '0013_login'),
    ]

    operations = [
        migrations.RenameField(
            model_name='login',
            old_name='email',
            new_name='type',
        ),
    ]
