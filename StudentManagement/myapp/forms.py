from django import forms
from .models import Class

class ClassSelectionForm(forms.Form):
    classes_to_teach = forms.ModelMultipleChoiceField(queryset=Class.objects.all(), widget=forms.SelectMultiple, label='Select Classes')
