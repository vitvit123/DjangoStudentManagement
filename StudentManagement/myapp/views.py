from django.shortcuts import render, redirect
from django.views.generic import View, TemplateView 
from django.views import generic
from django.core.paginator import Paginator
from django.http import HttpResponse, JsonResponse
from django.contrib.auth.models import User
from django.contrib.auth import logout
from django.contrib.auth import authenticate, login
from .forms import *
from django.http import HttpResponseRedirect
from django.urls import reverse
from .models import *
from django.contrib.auth.hashers import make_password

def indexpage(request):
    return render(request, 'index.html')

def users(request):
    return render(request, 'user.html')

def logout_view(request):
    logout(request)
    return render(request, 'index.html')

def user_login(request):
    if request.user.is_authenticated:
        return redirect('myapp:user_dashboard')

    error_message = ""
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        # Authenticate the user
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            lecturer = Lecturer.objects.get(username=request.user.username)
            # Retrieve all enrollments associated with the lecturer
            enrollments = Enrollment.objects.filter(lecturer__username=request.user.username)
            unique_class_names = enrollments.values_list('class_enrolled__ClassName', flat=True).distinct()
            return render(request, 'index.html', {'lecturer': lecturer,'enrollments':enrollments, 'unique_class_names': unique_class_names})
        else:
            error_message = "Invalid username or password. Please try again."

    return render(request, 'index.html', {'error_message': error_message})

def user_dashboard(request):
    if request.user.is_authenticated:
        try:
            lecturer = Lecturer.objects.get(username=request.user.username)
            # Retrieve all enrollments associated with the lecturer
            enrollments = Enrollment.objects.filter(lecturer__username=request.user.username)
            unique_class_names = enrollments.values_list('class_enrolled__ClassName', flat=True).distinct()
            return render(request, 'user.html', {'lecturer': lecturer,'enrollments':enrollments, 'unique_class_names': unique_class_names})
        except Lecturer.DoesNotExist:
            # Handle the case where the lecturer does not exist for the logged-in user
            error_message = "No lecturer information available."
            return render(request, 'user.html', {'error_message': error_message})
    else:
        # Redirect to login page if the user is not authenticated
        return redirect('myapp:users')  # Update 'user_login' with your login URL name
