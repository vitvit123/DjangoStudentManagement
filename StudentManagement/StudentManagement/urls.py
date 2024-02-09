from django.contrib import admin
from django.urls import path, include
from django.urls import include, re_path
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('admin/', admin.site.urls),
    path("accounts/", include("allauth.urls")),
    path('', include('myapp.urls')),
]
