from django.shortcuts import render, redirect
from django.views.generic import View, TemplateView 
from django.views import generic
from django.core.paginator import Paginator
from django.http import HttpResponse, JsonResponse
from django.contrib.auth.models import User
from django.contrib.auth import logout

def indexpage(request):
    return render(request, 'index.html')
def users(request):
    return render(request, 'user.html')
def logout_view(request):
    logout(request)
    return redirect("/")