# Create your views here.

from django.shortcuts import render
from django.http import HttpResponse

def propagation_index(request):
    return render(request, 'index.html')

def trace_dns(request, domain):
    
    return HttpResponse("Domain Name: %s" % domain)
