from django.db import models

# Create your models here.

class DNS(models.Model):
    ip = models.CharField(max_length=15)
    fqdn = models.CharField(max_length=50)
    org = models.CharField(max_length=100)   
    country = models.ForeignKey('Countries')
    latitude = models.CharField(max_length=25)
    longitude = models.CharField(max_length=25)
    responsetime = models.DecimalField(max_digits=15, decimal_places=10)
    available = models.BooleanField()
    malicious = models.BooleanField()
    reason = models.CharField(max_length=35)
    unavailable_count = models.IntegerField() 

class Countries(models.Model):
    country = models.CharField(max_length=3)
    country_name = models.CharField(max_length=30)
