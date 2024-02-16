from django.contrib.auth.models import User
from django.db import models
from django.contrib.auth.hashers import make_password

class Class(models.Model):
    ClassID = models.AutoField(primary_key=True)
    ClassName=models.CharField(max_length=100)
    Class_Schedule=models.CharField(max_length=100)
    def __str__(self):
        return f"{self.ClassID} {self.ClassName} {self.Class_Schedule}"

class Subject(models.Model):
    SubjectID = models.AutoField(primary_key=True)
    SubjectName=models.CharField(max_length=100)
    def __str__(self):
        return f"{self.SubjectID} {self.SubjectName}"

class Lecturer(models.Model):
    id = models.AutoField(primary_key=True)
    first_name = models.CharField(max_length=100)
    last_name = models.CharField(max_length=100)
    USERNAME = models.CharField(max_length=100)
    email = models.EmailField()
    phone_number = models.CharField(max_length=20, blank=True)
    course = models.ForeignKey(Subject, on_delete=models.CASCADE)  # Changed to ForeignKey
    profile_picture = models.ImageField(upload_to='img/lecture_profiles/', null=True, blank=True)
    password = models.CharField(max_length=128)
    def save(self, *args, **kwargs):
        # Hash the password before saving
        self.password = make_password(self.password)
        super().save(*args, **kwargs)
    def __str__(self):
        return f"{self.id} {self.first_name} {self.last_name} {self.email} {self.phone_number} {self.course.SubjectName} {self.profile_picture} {self.password}"

class Student(models.Model):
    student_id = models.AutoField(primary_key=True)
    first_name = models.CharField(max_length=100)
    last_name = models.CharField(max_length=100)
    USERNAME = models.CharField(max_length=100)
    email = models.EmailField()
    phone_number = models.CharField(max_length=20, blank=True)
    date_of_birth = models.DateField()
    gender = models.CharField(max_length=10)
    address = models.CharField(max_length=255)
    parent_guardian_name = models.CharField(max_length=255)
    parent_guardian_phone_number = models.CharField(max_length=20)
    course = models.ForeignKey(Subject, on_delete=models.CASCADE)  # Changed to ForeignKey
    profile_picture = models.ImageField(upload_to='img/Student_profiles/', null=True, blank=True)
    password = models.CharField(max_length=128)
    def save(self, *args, **kwargs):
        # Hash the password before saving
        self.password = make_password(self.password)
        super().save(*args, **kwargs)

    def __str__(self):
        return f"{self.student_id} {self.first_name} {self.last_name} {self.email} {self.phone_number} {self.date_of_birth} {self.gender} {self.address} {self.parent_guardian_name} {self.parent_guardian_phone_number} {self.course} {self.profile_picture} {self.password}"

class Enrollment(models.Model):
    student = models.ForeignKey(Student, on_delete=models.CASCADE)
    class_enrolled = models.ForeignKey(Class, on_delete=models.CASCADE)
    lecturer = models.ForeignKey(Lecturer, on_delete=models.CASCADE)
    subject = models.ForeignKey(Subject, on_delete=models.CASCADE)
    enrollment_date = models.DateTimeField(auto_now_add=True)
    
    def __str__(self):
        return f"{self.student} enrolled in {self.class_enrolled} for {self.subject} with lecturer {self.lecturer} on {self.enrollment_date}"
   
