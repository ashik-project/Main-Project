import os

from django.shortcuts import render, redirect
from django.http import HttpResponse
import PyPDF2
from StudyTab.settings import BASE_DIR
from .models import bookdata
from django.conf import settings
from django.core.files.storage import FileSystemStorage
from utils.pdftoText import pdfToText
from app1 import summary
from app1.pdftxt import convert
from app1.pdf2txt import main
ROOT_MEDIA = str(os.path.join(BASE_DIR))


# Create your views here.
def index(request):
    return render(request, 'home.html/')


def Adminhome(request):
    return render(request, 'admin/Adminhome.html')


def Addbook(request):
    return render(request, 'admin/Addbook.html')


def Removebook(request):
    return render(request, 'admin/Removebook.html')


def Userhome(request):
    return render(request, 'user/home.html')

def pageselect(request ,id):
    pno = bookdata.objects.get(id=id)
    return render(request, "user/pageselect.html", {'pno': pno})


def SummaryGen(request, id):
    book = bookdata.objects.get(id=id)
    bookText = pdfToText(book.file)
    return HttpResponse(bookText)
    # return render(request, 'user/summary.html')


def QuestionGen(request):
    return render(request, 'user/question.html')


def FlashGen(request):
    return render(request, 'user/flash.html')


def booksave(request):
    if request.method == 'POST':
        data = bookdata()
        data.book_name = request.POST.get('title')
        data.course = request.POST.get('course')
        data.branch = request.POST.get('branch')
        data.edition = request.POST.get('edition')
        data.year = request.POST.get('year')
        data.author = request.POST.get('author')
        pdf = request.FILES['pdf']
        fs = FileSystemStorage()
        filename = fs.save(pdf.name, pdf)
        uploaded_file_url = fs.url(filename)
        data.file = uploaded_file_url
        data.save()
        # book = bookdata.objects.get(file=uploaded_file_url)
        # pdfToText(book.file, str(book.id))

        return redirect('/Addbook')
    else:
        return HttpResponse("invalid")




def dataview(request):
    items = bookdata.objects.all()
    return render(request, "admin/Removebook.html", {'items': items})
    # return HttpResponse(convert("2.pdf",pages=[2,3]))
    # return HttpResponse(main("pdf/2.pdf"))

def deleteitem(request, id):
    items = bookdata.objects.get(id=id)
    items.delete()
    return redirect('/viewdatapip')

def p2t(request, id):
    if request.method == 'POST':
        a1 = int(request.POST.get('pstart'))
        a2 = int(request.POST.get('pend'))
        book=bookdata.objects.get(id=id)
        filename=book.file
    # print(filename)
        f1=filename.lstrip("/")
        bn=book.book_name
    # a1=5
    # a2=10
        a=[]
        for k in range (a1,a2):
            a.append(k)
        return HttpResponse(convert(f1,bn, pages=a))
    # return HttpResponse(f1)
    # return HttpResponse(convert(f1,bn))

def summary(request, id):
    book=bookdata.objects.get(id=id)
    fileid=book.file
    # print(filename)
    # return HttpResponse(convert(f1, pages=[2, 3]))
    # return HttpResponse(f1)
    return HttpResponse(summary(fileid))