from django.shortcuts import render,redirect
from django.http import HttpResponse,HttpRequest
from django.core import serializers
from django.views.generic import View
from django.contrib.auth import authenticate, login
from django.contrib.auth.views import LoginView as LoginViewBase
from django.contrib.auth.mixins import LoginRequiredMixin
from .models import Counter
import json
from .models import User, Liuyan, ShoppingCart, Product
from django.views.decorators.csrf import csrf_exempt

def index(request):
    a = Counter.objects.get(id=1)
    a.counter += 1
    a.save()

    return render(request, 'index.html', {'data': a.counter})


class LoginView(LoginViewBase):

    template_name = 'login.html'
    # def get(self, request):
    #     return render(request, 'login.html')
    #
    # def post(self, request):
    #     # body_json = json.loads(request.body)
    #     #
    #     # print(body_json)
    #     #
    #     # username = body_json['username']
    #     # password = body_json['password']
    #     #
    #     # user = authenticate(request, username=username, password=password)
    #     # if user is None:
    #     #     return HttpResponse(json.dumps({'success': False}), content_type='application/json; charset=utf-8')
    #     # return HttpResponse(json.dumps({'success': True}), content_type='application/json; charset=utf-8')
    #     print(request.POST)
    #
    #     username = request.POST.get('username')
    #     password = request.POST.get('password')
    #
    #     user = authenticate(request, username=username, password=password)
    #     if user is None:
    #         return HttpResponse('Fail')
    #     login(request, user)
    #     return HttpResponse('OK')




class FooView(LoginRequiredMixin, View):
    def get(self, request, number):
        return HttpResponse('Login Success')


class RegisterView(View):
    def get(self, request):
        return render(request, 'register.html')

    def post(self, request):
        user_name = request.POST.get('username')
        pass_word = request.POST.get('password')
        mmm = User.objects.create_user(user_name, 'lennon@thebeatles.com', pass_word)
        mmm.save()
        return redirect('/login')


@csrf_exempt
def liuyan(request):
    if request.method == 'GET':
        # jvzi = Liuyan.objects.all()

        # print(jvzi[0].id)
        items = Liuyan.objects.all()
        return render(request, 'liuyan.html', {'items': items})

    if request.method == 'POST':
        # body_json = json.loads(request.body)
        # body_json = json.loads(request.body)
        # print(body_json)
        print(request.body.decode('utf-8'))
        liuyan = request.body.decode('utf-8')

        q = Liuyan(username=request.user.username,liuyan= liuyan)
        q.save()
        return HttpResponse(request.body)
    else:
        pass


@csrf_exempt
def shoppingcartview(request):
    if not request.user.is_authenticated:
        return redirect('/login')

    if request.method == 'GET':
        return render(request, 'shoppingcart.html')

    if request.method == 'POST':

        ls = []
        items = request.user.cart.all()

        for item in items:
            a = {
                'id': item.product.productid,
                'src': item.product.imagesrc,
                'name': item.product.name,
                'info': item.product.info,
                'price': item.product.price,
                'shopid': item.product.shopid,
                'ordercount': item.ordercount
            }
            ls.append(a)
        ms = {"data": ls}

        data = json.dumps(ms)
        return HttpResponse(data, content_type='application/json; charset=utf-8')


@csrf_exempt
def detail(request, product_id):
    s = Product.objects.get(productid=product_id)
    return render(request, 'detail.html', {'item': s})


@csrf_exempt
def jiaru(request):

    if request.user.is_authenticated:
        if request.method == 'POST':
            json_data = json.loads(request.body)
            productid = int(json_data['id'])
            print(productid)
            me = request.user
            print(me)
            c = ShoppingCart(user=me,
                         product=Product.objects.get(productid=productid),
                         ordercount=1)
            c.save()

            return HttpResponse('ok')
        else:
             pass
    else:
        return HttpResponse('qvdenglu')



@csrf_exempt
def settlement(request):
    return render(request, 'settlement.html')


@csrf_exempt
def payment(request):
    return render(request, 'payment.html')





@csrf_exempt
def mingxing(request):
    items = Product.objects.filter(category='mingxing')
    a = Counter.objects.get(id=1)
    return render(request, 'mingxing/mingxing.html', {'data': a.counter, 'items': items})


@csrf_exempt
def piaowu(request):
    items = Product.objects.filter(category='piaowu')
    a = Counter.objects.get(id=1)
    return render(request, 'piaowu/piaowu.html', {'data': a.counter, 'items': items})


@csrf_exempt
def xiaoshuo(request):
    items = Product.objects.filter(category='xiaoshuo')
    a = Counter.objects.get(id=1)
    return render(request, 'xiaoshuo/xiaoshuo.html', {'data': a.counter, 'items': items})


@csrf_exempt
def yingshi(request):
    items = Product.objects.filter(category='yingshi')
    a = Counter.objects.get(id=1)
    return render(request, 'yingshi/yingshi.html', {'data': a.counter, 'items': items})


@csrf_exempt
def dongman(request):
    items = Product.objects.filter(category='dongman')
    a = Counter.objects.get(id=1)
    return render(request, 'dongman/dongman.html', {'data': a.counter, 'items': items})

@csrf_exempt
def youxi(request):
    items = Product.objects.filter(category='youxi')
    a = Counter.objects.get(id=1)
    return render(request, 'youxi/youxi.html', {'data': a.counter, 'items': items})


@csrf_exempt
def shuji(request):
    items = Product.objects.filter(category='书籍画报')
    a = Counter.objects.get(id=1)
    return render(request, '书籍画报/书籍画报.html', {'data': a.counter, 'items': items})


@csrf_exempt
def yingyuan(request):
    items = Product.objects.filter(category='应援物')
    a = Counter.objects.get(id=1)
    return render(request, '应援物/应援物.html', {'data': a.counter, 'items': items})


@csrf_exempt
def hufu(request):
    items = Product.objects.filter(category='护肤化妆')
    a = Counter.objects.get(id=1)
    return render(request, '护肤化妆/护肤化妆.html', {'data': a.counter, 'items': items})


@csrf_exempt
def shuma(request):
    items = Product.objects.filter(category='数码配件')
    a = Counter.objects.get(id=1)
    return render(request, '数码配件/数码配件.html', {'data': a.counter, 'items': items})


@csrf_exempt
def riyong(request):
    items = Product.objects.filter(category='日用百货')
    a = Counter.objects.get(id=1)
    return render(request, '日用百货/日用百货.html', {'data': a.counter, 'items': items})


@csrf_exempt
def fuzhuang(request):
    items = Product.objects.filter(category='服装鞋包')
    a = Counter.objects.get(id=1)
    return render(request, '服装鞋包/服装鞋包.html', {'data': a.counter, 'items': items})




