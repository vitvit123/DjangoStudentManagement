# Generated by Django 5.0.1 on 2024-02-16 08:35

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('myapp', '0008_lecturer_username_student_username'),
    ]

    operations = [
        migrations.RenameField(
            model_name='lecturer',
            old_name='USERNAME',
            new_name='username',
        ),
    ]