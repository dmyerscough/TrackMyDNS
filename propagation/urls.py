from django.conf.urls import patterns, include, url
#from views import propagation_index

urlpatterns = patterns('',
    url(r'^$', 'propagation.views.propagation_index', name='propagation_index'),
)

