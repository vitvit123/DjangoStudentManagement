from django.contrib import admin
from .models import *
from django import forms 

@admin.register(Lecturer)
class LecturerAdmin(admin.ModelAdmin):
    list_display = ('id','first_name', 'last_name', 'email', 'phone_number', 'course','profile_picture','password')
    autocomplete_fields = ['course']  # Use autocomplete for the course field

class StudentAdminForm(forms.ModelForm):
    GENDER_CHOICES = [
        ('Male', 'Male'),
        ('Female', 'Female'),
    ]
    gender = forms.ChoiceField(choices=GENDER_CHOICES)

    class Meta:
        model = Student
        fields = '__all__'

@admin.register(Student)
class StudentAdmin(admin.ModelAdmin):
    list_display = ('student_id','first_name', 'last_name', 'email', 'phone_number', 'date_of_birth', 'gender', 'address', 'parent_guardian_name', 'parent_guardian_phone_number','course','profile_picture','password')
    autocomplete_fields = ['course']  # Use autocomplete for the course field
    form = StudentAdminForm

@admin.register(Subject)
class SubjectAdmin(admin.ModelAdmin):
    list_display = ('SubjectID','SubjectName')
    search_fields = ['SubjectName']  # Specify the search field for SubjectName

@admin.register(Class)
class ClassAdmin(admin.ModelAdmin):
    list_display = ('ClassID','ClassName','Class_Schedule')

@admin.register(Enrollment)
class EnrollmentAdmin(admin.ModelAdmin):
    raw_id_fields = ('student', 'class_enrolled', 'lecturer', 'subject')
    list_display = ('student', 'class_enrolled', 'lecturer', 'subject', 'enrollment_date')
