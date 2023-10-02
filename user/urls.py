# todos/urls.py

from django.urls import path
from django.contrib import admin

from .views import index, search

urlpatterns = [path("", index, name="index"), path("search/", search, name="search")]
