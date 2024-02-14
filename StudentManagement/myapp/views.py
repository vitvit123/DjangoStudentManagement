from django.shortcuts import render, redirect
from django.views.generic import View, TemplateView 
from django.views import generic
from django.core.paginator import Paginator
from django.http import HttpResponse, JsonResponse
from django.contrib.auth.models import User
from django.contrib.auth import logout
from django.contrib.auth import authenticate, login
from .forms import LoginForm
from django.http import HttpResponseRedirect
from django.urls import reverse

def indexpage(request):
    return render(request, 'index.html')
def users(request):
    return render(request, 'user.html')
def logout_view(request):
    logout(request)
    return redirect("/")




def user_login(request):
    if request.method == 'POST':
        form = LoginForm(request.POST)
        if form.is_valid():
            email = form.cleaned_data['email']
            password = form.cleaned_data['password']
            # Authenticate user
            user = authenticate(request, email=email, password=password)

            if user is not None:
                login(request, user)
                return HttpResponseRedirect(reverse('myapp:users'))  # Redirect to user page on successful login
            else:
                # If authentication fails, display an error message in the login form
                error_message = "Invalid email or password."
                return render(request, 'index.html', {'form': form, 'error_message': error_message})
    else:
        form = LoginForm()
    return render(request, 'index.html', {'form': form})  # Render the login form