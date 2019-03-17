from django.urls import path
from django.contrib.auth.views import LogoutView
from . import views

app_name = 'camelot'
urlpatterns = [
    path('', views.index, name='index'),
    path('register/', views.RegisterView.as_view(), name='register'),
    path('login/', views.LoginView.as_view(), name='login'),
    path('logout/', LogoutView.as_view(), name='logout'),
    path('foo/<int:number>/', views.FooView.as_view()),
    path('liuyan/', views.liuyan, name='liuyan'),
    path('shoppingcart/', views.shoppingcartview, name='shoppingcart'),
    path('detail/<int:product_id>/', views.detail, name="detail"),
    path('dongman/', views.dongman, name='dongman'),
    path('mingxing/', views.mingxing, name='mingxing'),
    path('piaowu/', views.piaowu, name='piaowu'),
    path('xiaoshuo/', views.xiaoshuo, name='xiaoshuo'),
    path('yingshi/', views.yingshi, name='yingshi'),
    path('youxi/', views.youxi, name='youxi'),
    path('shuji/', views.shuji, name='shuji'),
    path('yingyuan/', views.yingyuan, name='yingyuan'),
    path('hufu/', views.hufu, name='hufu'),
    path('shuma/', views.shuma, name='shuma'),
    path('riyong/', views.riyong, name='riyong'),
    path('fuzhuang/', views.fuzhuang, name='fuzhuang'),
    path('jiaru/', views.jiaru, name='jiaru'),
    path('settlement/', views.settlement, name='settlement'),
    path('payment/', views.payment, name='payment')
]