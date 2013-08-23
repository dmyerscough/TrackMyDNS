# Create your views here.

from django.shortcuts import render
from django.http import HttpResponse

import dnscache as TrackMyDNS

def propagation_index(request):
    return render(request, 'index.html')

def trace_dns(request, country_id, record_type, domain):
    
    DNS = TrackMyDNS.TrackMyDNS('172.16.105.141')

    return HttpResponse("%s" % (DNS.query('www.google.com', 'A', '8.8.8.8', fmt="json")), content_type = "application/json")
