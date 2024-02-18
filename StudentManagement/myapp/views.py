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
        return redirect('myapp:users')  

    error_message = ""
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        # Authenticate the user
        user = authenticate(request, username=username, password=password)
        print(user)
        print(username)
        print(password)
        if user is not None:
            login(request, user)
            return redirect('myapp:users')
        else:
            error_message = "Invalid username or password. Please try again."

    return render(request, 'index.html', {'error_message': error_message})

def user_dashboard(request):
    # Get the lecturer associated with the logged-in user
    lecturer = Lecturer.objects.get(user=request.user)
    return render(request, 'index.html', {'lecturer': lecturer})

def teacher_class_students(request):
    if request.method == 'POST':
        form = ClassSelectionForm(request.POST)
        if form.is_valid():
            selected_classes = form.cleaned_data['classes_to_teach']
            students = Student.objects.filter(enrollment__class_enrolled__in=selected_classes)
            return render(request, 'teacher_class_students.html', {'form': form, 'students': students, 'selected_classes': selected_classes})
    else:
        form = ClassSelectionForm()
    return render(request, 'teacher_class_selection.html', {'form': form})
