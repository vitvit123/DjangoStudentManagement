from django.shortcuts import render, redirect
from django.views.generic import View, TemplateView 
from django.views import generic
from django.core.paginator import Paginator
from django.http import HttpResponse, JsonResponse
from django.contrib.auth.models import User
from django.contrib.auth import logout
from django.contrib.auth import authenticate, login
from .forms import LoginForm

def indexpage(request):
    return render(request, 'index.html')
def users(request):
    return render(request, 'user.html')
def logout_view(request):
    logout(request)
    return redirect("/")
def login_view(request):
    if request.method == 'POST':
        form = LoginForm(request.POST)
        if form.is_valid():
            email = form.cleaned_data['email']
            password = form.cleaned_data['password']
            user = authenticate(request, email=email, password=password)
            if user is not None:
                login(request, user)
                # Redirect to a success page or home page
                return redirect('home')
            else:
                # Invalid login
                error_message = "Invalid email or password."
    else:
        form = LoginForm()
    return render(request, 'login.html', {'form': form})