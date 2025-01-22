from django.contrib import admin
from django.urls import path, re_path
from langapp.views import React

urlpatterns = [
    path('admin/', admin.site.urls),

    # React
    re_path(r'^.*', React.as_view(), name='frontend'),
]
