from django.db import models

class Lecturer(models.Model):
    id = models.AutoField(primary_key=True)
    first_name = models.CharField(max_length=100)
    last_name = models.CharField(max_length=100)
    email = models.EmailField()
    phone_number = models.CharField(max_length=20, blank=True)
    course = models.CharField(max_length=100)
    profile_picture = models.ImageField(upload_to='img/lecture_profiles/', null=True, blank=True)
    def __str__(self):
        return f"{self.id} {self.first_name} {self.last_name} {self.email} {self.phone_number} {self.course} {self.profile_picture}"

class Student(models.Model):
    student_id = models.AutoField(primary_key=True)
    first_name = models.CharField(max_length=100)
    last_name = models.CharField(max_length=100)
    email = models.EmailField()
    phone_number = models.CharField(max_length=20, blank=True)
    date_of_birth = models.DateField()
    gender = models.CharField(max_length=10)
    address = models.CharField(max_length=255)
    parent_guardian_name = models.CharField(max_length=255)
    parent_guardian_phone_number = models.CharField(max_length=20)
    course	 = models.CharField(max_length=100)
    profile_picture = models.ImageField(upload_to='img/Student_profiles/', null=True, blank=True)

    def __str__(self):
        return f"{self.student_id} {self.first_name} {self.last_name} {self.email} {self.phone_number} {self.date_of_birth} {self.gender} {self.address} {self.parent_guardian_name} {self.parent_guardian_phone_number} {self.course} {self.profile_picture}"
