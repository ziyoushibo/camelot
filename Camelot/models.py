from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.


class User(AbstractUser):
    pass


class Counter(models.Model):
    counter = models.IntegerField(default=0)

    def __str__(self):
        return self.id


class Liuyan(models.Model):
    username = models.CharField(max_length=200)
    liuyan = models.CharField(max_length=2000)

    def __str__(self):
        return self.liuyan


class ShoppingCart(models.Model):
    user = models.ForeignKey('Camelot.User', on_delete=models.CASCADE, related_name='cart')
    product = models.ForeignKey('Camelot.Product', on_delete=models.CASCADE, related_name='cart')
    ordercount = models.IntegerField()


class Product(models.Model):
    productid = models.IntegerField()
    name = models.CharField(max_length=120)
    imagesrc = models.CharField(max_length=2000)
    price = models.IntegerField()
    shopid = models.IntegerField()
    info = models.CharField(max_length=2000)
    jieshao = models.CharField(max_length=5000)
    category = models.CharField(max_length=100)

    def __str__(self):
        return self.name