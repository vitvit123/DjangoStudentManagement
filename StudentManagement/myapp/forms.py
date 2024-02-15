from django import forms
from .models import Class

# class LoginForm(forms.Form):
    # email = forms.EmailField()
    # password = forms.CharField(widget=forms.PasswordInput)
class ClassSelectionForm(forms.Form):
    classes_to_teach = forms.ModelMultipleChoiceField(queryset=Class.objects.all(), widget=forms.SelectMultiple, label='Select Classes')