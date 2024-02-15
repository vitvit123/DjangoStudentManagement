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
from .forms import ClassSelectionForm
from .models import Student, Enrollment
from .models import Lecturer  # Import the Lecturer model at the top

def indexpage(request):
    return render(request, 'index.html')
def users(request):
    return render(request, 'user.html')
def logout_view(request):
    logout(request)
    return redirect("/")


def user_login(request):
    if request.user.is_authenticated:
        return redirect('myapp:users')  

    if request.method == 'POST':
        email = request.POST.get('email')
        password = request.POST.get('password')

        # Debugging: Print provided email and password
        print("Provided Email:", email)
        print("Provided Password:", password)

        user = authenticate(request, email=email, password=password)
        
        # Debugging: Print user object
        print("Authenticated User:", user)

        if user is not None:
            login(request, user)
            # Redirect to a success page or protected view
            return redirect('myapp:users')
        else:
            # Handle authentication failure
            error_message = "Invalid username or password. Please try again."
    else:
        error_message = ""

    return render(request, 'index.html', {'error_message': error_message})

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