# Generated by Django 2.1.2 on 2018-12-07 05:00

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Camelot', '0008_product_jieshao'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='category',
            field=models.CharField(default='h', max_length=100),
            preserve_default=False,
        ),
    ]