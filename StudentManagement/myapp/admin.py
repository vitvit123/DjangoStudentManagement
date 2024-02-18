from django.contrib import admin
from .models import Lecturer, Student, Subject, Class, Enrollment
from django import forms 
from django.contrib.auth.models import User

@admin.register(Lecturer)
class LecturerAdmin(admin.ModelAdmin):
    list_display = ('id', 'first_name', 'last_name', 'username', 'email', 'phone_number', 'course', 'profile_picture', 'password')
    autocomplete_fields = ['course']  # Use autocomplete for the course field

    def save_model(self, request, obj, form, change):
        # Save the lecturer instance
        super().save_model(request, obj, form, change)
        
        # Check if a corresponding user already exists
        user = User.objects.filter(username=obj.username).first()
        
        # If no user exists, create a new one
        if not user:
            user = User.objects.create_user(username=obj.username, email=obj.email, password=obj.password)
        
        # Set other user attributes
        user.first_name = obj.first_name
        user.last_name = obj.last_name
        user.save()


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
    list_display = ('student_id', 'first_name', 'last_name','username', 'email', 'phone_number', 'date_of_birth', 'gender', 'address', 'parent_guardian_name', 'parent_guardian_phone_number', 'course', 'profile_picture', 'password')
    autocomplete_fields = ['course']  # Use autocomplete for the course field
    form = StudentAdminForm

    def save_model(self, request, obj, form, change):
        # Save the student instance
        super().save_model(request, obj, form, change)
        
        # Check if a corresponding user already exists
        user = User.objects.filter(username=obj.username).first()
        
        # If no user exists, create a new one
        if not user:
            user = User.objects.create_user(username=obj.username, email=obj.username)
        
        # Set other user attributes
        user.first_name = obj.first_name
        user.last_name = obj.last_name
        user.save()

@admin.register(Subject)
class SubjectAdmin(admin.ModelAdmin):
    list_display = ('SubjectID', 'SubjectName')
    search_fields = ['SubjectName']  # Specify the search field for SubjectName

@admin.register(Class)
class ClassAdmin(admin.ModelAdmin):
    list_display = ('ClassID', 'ClassName', 'Class_Schedule')

@admin.register(Enrollment)
class EnrollmentAdmin(admin.ModelAdmin):
    raw_id_fields = ('student', 'class_enrolled', 'lecturer', 'subject')
    list_display = ('student', 'class_enrolled', 'lecturer', 'subject', 'enrollment_date')

    def save_model(self, request, obj, form, change):
        super().save_model(request, obj, form, change)
        if isinstance(obj.student, Student):
            # Check if a corresponding user already exists
            user = User.objects.filter(username=obj.student.email).first()
            
            # If no user exists, create a new one
            if not user:
                user = User.objects.create_user(username=obj.student.email, email=obj.student.email)
            
            # Set other user attributes
            user.first_name = obj.student.first_name
            user.last_name = obj.student.last_name
            user.save()
