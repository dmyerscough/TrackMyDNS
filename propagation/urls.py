from django.conf.urls import patterns, include, url
#from views import propagation_index

urlpatterns = patterns('',
    url(r'^$', 'propagation.views.propagation_index', name='propagation_index'),
    url(r'^query/(([-a-z]+\.){1,61}([a-z]+\.?){1,2})$', 'propagation.views.trace_dns'),
)

