import os
from django.http import HttpResponse
from django.shortcuts import render, redirect




def flascard (request):
    file1 = open("SummaryTextHistory NCRT.txt", "r")
    x = file1.split (".")
    return x