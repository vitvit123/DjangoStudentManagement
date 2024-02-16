from django.urls import include, re_path
from django.conf import settings 
from myapp import views as myapp_view
from . import views
from .views import logout_view
from .views import indexpage
from myapp.views import *

app_name = 'myapp'
urlpatterns = [
    re_path('logout/',logout_view, name='logout'),
    re_path('index/',views.indexpage,name='indexpage'),
    re_path('users/', myapp_view.users, name='users'),    
    re_path('login/', user_login, name='login'),
]
