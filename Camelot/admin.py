from django.contrib import admin
from django.contrib.auth.admin import UserAdmin as UserAdminBase

# Register your models here.
from .models import User,Product,Counter,Liuyan,ShoppingCart

@admin.register(User)
class UserAdmin(UserAdminBase):
    pass

admin.site.register(Product)
admin.site.register(Counter)
admin.site.register(Liuyan)
admin.site.register(ShoppingCart)

