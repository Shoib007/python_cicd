from django.urls import path

from .views import *

urlpatterns = [
    path('', indexView, name='index'),
    path('about/', aboutView, name='about'),
    path('home/', homeView, name='home'),
]