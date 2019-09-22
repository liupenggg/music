"""music URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
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
from django.contrib import admin
from django.urls import path, include

# 配置URL地址信息
'''
urlpatterns:
    整个项目的URL集合，每个元素代表一条URL信息。

path('admin/', admin.site.urls)：
    设定Admin的URL。'admin/'代表“http://127.0.0.1:8000/admin”地址信息，'admin'后面的斜杠是路径分隔符；
“admin.site.urls”是URL的处理函数，也称为视图函数。

path('',include('index.urls')):
    URL为空，代表为网站的域名，即“http://127.0.0.1:8000/”，通常是网站的首页；include是将该URL分发给index的urls.py处理。

'''
urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('index.urls')),  #
    path('ranking.html', include('ranking.urls')),
    path('play/', include('play.urls')),
    path('comment/', include('comment.urls')),
    path('search/', include('search.urls')),
    path('user/', include('user.urls')),
]
