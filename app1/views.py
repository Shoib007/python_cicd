from django.shortcuts import render


def indexView(request):
    return render(request, 'index.html')

def aboutView(request):
    return render(request, 'About.html')

def homeView(request):
    return render(request, 'Home.html')
