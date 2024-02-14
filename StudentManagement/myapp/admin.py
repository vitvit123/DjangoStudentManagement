from django.contrib import admin
from .models import *


@admin.register(Lecturer)
class LecturerAdmin(admin.ModelAdmin):
    list_display = ('id','first_name', 'last_name', 'email', 'phone_number', 'course','profile_picture','password')
@admin.register(Student)
class StudentAdmin(admin.ModelAdmin):
    list_display = ('student_id','first_name', 'last_name', 'email', 'phone_number', 'date_of_birth', 'gender', 'address', 'parent_guardian_name', 'parent_guardian_phone_number','course','profile_picture','password')

@admin.register(Subject)
class SubjectAdmin(admin.ModelAdmin):
    list_display = ('SubjectID','SubjectName')

@admin.register(Class)
class ClassAdmin(admin.ModelAdmin):
    list_display = ('ClassID','ClassName','Class_Schedule')
    from django.contrib import admin
from .models import Enrollment

class EnrollmentAdmin(admin.ModelAdmin):
    raw_id_fields = ('student', 'class_enrolled', 'lecturer', 'subject')
    list_display = ('student', 'class_enrolled', 'lecturer', 'subject', 'enrollment_date')

admin.site.register(Enrollment, EnrollmentAdmin)


