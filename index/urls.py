"""music URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.urls import path
from . import views
# 设置首页的URL地址信息
'''
urlpatterns:
    整个项目的URL集合，每个元素代表一条URL信息。

path('', views.index):
    URL为空，代表为网站的域名，即“http://127.0.0.1:8000/”，通常是网站的首页；还寄给上面我们导入了“views”这个文件吗？
该文件用于编写视图函数，处理URL请求信息并返回网页给用户。“views.index”表示我们调用了views文件中的index函数
（换句话说，当用户访问首页是，就会触发“views.index”函数的执行）。因此我们在这里指定后，需要在“views”这个文件里编写对应的
“index”函数。
'''
urlpatterns = [
    path('', views.indexView, name='index'),
]