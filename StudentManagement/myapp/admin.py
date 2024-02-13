from django.contrib import admin
from .models import *


@admin.register(Lecturer)
class LecturerAdmin(admin.ModelAdmin):
    list_display = ('id','first_name', 'last_name', 'email', 'phone_number', 'course','profile_picture')
@admin.register(Student)
class StudentAdmin(admin.ModelAdmin):
    list_display = ('student_id','first_name', 'last_name', 'email', 'phone_number', 'date_of_birth', 'gender', 'address', 'parent_guardian_name', 'parent_guardian_phone_number','course','profile_picture')
