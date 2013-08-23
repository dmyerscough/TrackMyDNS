from django.conf.urls import patterns, include, url

urlpatterns = patterns('',
    #url(r'^$', include('propagation.urls')),
    url(r'^$', 'propagation.views.propagation_index', name='propagation_index'),
    url(r'^query/([0-9]{1,2})/([a-zA-Z]{1,5})/((?:[-a-z]+\.){1,61}(?:[a-z]+\.?){1,2})$', 'propagation.views.trace_dns'),
)
