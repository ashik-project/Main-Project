import os
import requests
from django.shortcuts import render, redirect
from django.http import HttpResponse
import PyPDF2
from StudyTab.settings import BASE_DIR
from .models import bookdata
from .models import flasdata
from django.conf import settings
from django.core.files.storage import FileSystemStorage
from utils.pdftoText import pdfToText
from app1 import summary
from app1.pdftxt import convert
from app1.pdftxt import convert1
from app1.pdftxt import convert2
from app1.ptotext import totext
from app1.flashcard import flascard
from app1.models import summarydata
from .models import userdata
from .models import login
from nltk import sent_tokenize
import re
from textblob import TextBlob
from .models import questiondata
import requests
from textblob import Word
import nltk
import sys
from app1.pdf2txt import main
from sumy.nlp.stemmers import Stemmer
from sumy.nlp.tokenizers import Tokenizer
from sumy.parsers.plaintext import PlaintextParser
from sumy.summarizers.lsa import LsaSummarizer as Summarizer
from sumy.utils import get_stop_words
ROOT_MEDIA = str(os.path.join(BASE_DIR))


# Create your views here.
def index(request):
    return render(request, 'home.html/')

def home(request):
    return render(request, 'home1.html/')

def register(request):
    return render(request, 'register.html/')

def userreg(request):
    udata = userdata.objects.all()
    ldata = login()
    Flag=0
    if request.method == 'POST':
        un = request.POST.get('username')
        pwd = request.POST.get('password')
        for da in udata:
            if da.username == un:
                Flag=1
        if Flag==1:
            HttpResponse("user alredy exist")

        else:
            udata1=userdata()
            udata1.username = request.POST.get('username')
            udata1.password = request.POST.get('password')
            udata1.email = request.POST.get('email')
            udata1.save()
            ldata.username = request.POST.get('username')
            ldata.password = request.POST.get('password')
            ldata.type = "user"
            ldata.save()
    return HttpResponse("Sucssess")

def loginpage(request):
    return render(request, 'login.html')

def loginp(request):
    if request.method == 'POST':
        ldata = login.objects.all()
        un = request.POST.get('username')
        pwd = request.POST.get('password')
        flag = 0
        type = "admin"
        for lg in ldata:
            if un == lg.username and pwd == lg.password:
                type=lg.type
                flag = 1
                request.session['user'] = lg.username
                print (request.session['user'])
                if type=="user":
                    return redirect('/Userhome')
                elif type=="admin":
                    return redirect('/Adminhome')
                else:
                    return HttpResponse("Invalid acct type")
        if flag==0:
            return HttpResponse("invalid user")


            # if flag == 0:
            #     return HttpResponse("User does not exist")



def Adminhome(request):
    return render(request, 'admin/Adminhome.html')


def Addbook(request):
    return render(request, 'admin/Addbook.html')


def Removebook(request):
    return render(request, 'admin/Removebook.html')

def summerylist(request):
    return render(request, 'user/summarylist.html')

def summerylistdata(request):
    user = request.session['user']
    sums = bookdata.objects.filter(user = user)
    return render(request, "user/summarylist.html", {'sums': sums})

def flaslist(request):
    user = request.session['user']
    flash = bookdata.objects.filter(user=user)
    return render(request, "user/flashlist.html", {'flash': flash})

def qestionlistdisplay(request):
    user = request.session['user']
    qstn = questiondata.objects.values('book_name').distinct().filter(userid = user)
    return render(request, "user/questionlistdisplay.html", {'qstn': qstn})




def questionlist(request):
    user = request.session['user']
    qstn = bookdata.objects.filter(user=user)
    return render(request, "user/questionlist.html", {'qstn': qstn})




def Userhome(request):
    return render(request, 'user/home.html')

def flashcard(request):
    return HttpResponse (flascard)

def pageselect(request ,id):
    pno = bookdata.objects.get(id=id)
    return render(request, "user/pageselect.html", {'pno': pno})

def flashpageselect(request ,id):
    pno = bookdata.objects.get(id=id)
    return render(request, "user/flashpageselect.html", {'pno': pno})

def pageselectsum(request ,id):
    pno = bookdata.objects.get(id=id)
    return render(request, "user/pageselectsum.html", {'pno': pno})

def qstnpageselect(request , id):
    pno = bookdata.objects.get(id=id)
    return render(request, "user/qstnpageselect.html", {'pno': pno})



def SummaryGen(request, id):
    if request.method == 'POST':
        a1 = int(request.POST.get('pstart'))
        a2 = int(request.POST.get('pend'))
        book=bookdata.objects.get(id=id)
        filename=book.file
        f1=filename.lstrip("/")
        bn=book.book_name
    # a1=5
    # a2=10
        a=[]
        for k in range (a1,a2):
            a.append(k)
        return HttpResponse(summary(f1,bn))
    # bn = book.book_name
    # # bookText = pdfToText(book.file)
    # return HttpResponse(summary(bn))
    # return render(request, 'user/summary.html')


def QuestionGen(request):
    return render(request, 'user/question.html')

def viewsum(request):
    user = request.session['user']
    smry = summarydata.objects.filter(user_id = user)
    return render(request, "user/viewsum.html", {'smry': smry})

def FlashGen(request):
    return render(request, 'user/flash.html')


def booksave(request):
    if request.method == 'POST':
        data = bookdata()
        data.user = request.session['user']
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
    return redirect('/viewdata')

def p2t(request, id):
    if request.method == 'POST':
        a1 = int(request.POST.get('pstart'))
        a2 = int(request.POST.get('pend'))
        book=bookdata.objects.get(id=id)
        filename=book.file
        f1=filename.lstrip("/")
        bn=book.book_name
    # a1=5
    # a2=10
        a=[]
        for k in range (a1,a2):
            a.append(k)
        x=convert(f1,bn, pages=a)
        sumdata = summarydata()
        user = request.session['user']
        sumdata.book_name=bn
        sumdata.summary=x
        sumdata.date="1.4.19"
        sumdata.user_id=user
        sumdata.chapter=request.POST.get('chapter')
        sumdata.save()

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

def viewsumm(request):
    if request.method == 'POST':
        bn = 'History NdCRT'
        sumdata = summarydata ()
        #data = sumdata.objects.filter(book_name=bn)
        data=summarydata.objects.get(book_name=bn)
        x=data.summary
        print (x)
        return HttpResponse(x)


def viewsumpage(request):
    return render(request, "user/viewsummery.html")

def flashgenchapter(request , bn):
    data = summarydata.objects.filter(book_name=bn)
    request.session['Flashbname'] = bn
    q = data.values('chapter').distinct()
    return render(request, "user/viewchapter.html", {'fgenchap': q})




def viewflashpage(request , id):
    bdata = bookdata.objects.get(id=id)
    sdata = summarydata.objects.get(book_name=bdata.book_name)
    sum = sdata.summary
    print(sum)

    x=sum
    sentences = re.split(r' *[\.\?!][\'"\)\]]* *', x)
    ct=0
    lenn =len(sentences)
    mid=int((0+lenn)/2)
    print(sentences[1])
    print(sentences[mid],":",mid)
    print(sentences[lenn-2],":",lenn-1)

    f_1 = sentences[1]
    f_2 = sentences[mid]
    f_3 = sentences[lenn-2]
    data = flasdata()
    data1 = flasdata()
    data2 = flasdata()
    data.book_name = sdata.book_name
    data.book_id = bdata.id
    data.flash = f_1
    data.save()
    data1.book_name = sdata.book_name
    data1.book_id = bdata.id
    data1.flash = f_2
    data1.save()
    data2.book_name = sdata.book_name
    data2.book_id = bdata.id
    data2.flash = f_3
    data2.save()


        # for stuff in sentences:
        #     print(stuff)
        #     ct=ct+1
        # print (ct)
    return HttpResponse (sum)

def fgen(request,id):
    if request.method == 'POST':
        a1 = int(request.POST.get('pstart'))
        a2 = int(request.POST.get('pend'))
        chaptr = int(request.POST.get('chapter'))
        book=bookdata.objects.get(id=id)
        filename=book.file
        f1=filename.lstrip("/")
        bn=book.book_name
    # a1=5
    # a2=10
        a=[]
        for k in range (a1,a2):
            a.append(k)
        x=convert(f1,bn, pages=a)
        sum = x
        sentences = re.split(r' *[\.\?!][\'"\)\]]* *', sum)
        ct = 0
        lenn = len(sentences)
        mid = int((0 + lenn) / 2)
        print(sentences[1])
        print(sentences[mid], ":", mid)
        print(sentences[lenn - 2], ":", lenn - 1)
        f_1 = sentences[1]
        f_2 = sentences[mid]
        f_3 = sentences[lenn - 2]
        data = flasdata()
        data1 = flasdata()
        data2 = flasdata()
        user = request.session['user']
        data.book_name = bn
        data.book_id = book.id
        data.chapter = chaptr
        data.flash = f_1
        data.username = user
        data.save()
        data1.book_name = bn
        data1.book_id = book.id
        data1.chapter = chaptr
        data1.flash = f_2
        data1.username = user
        data1.save()
        data2.book_name = bn
        data2.book_id = book.id
        data2.chapter = chaptr
        data2.flash = f_3
        data2.username = user
        data2.save()
        return HttpResponse("Flashcard Created")

# def viewflashpage(request , id):
#     return render(request, "user/flash.html")

def displaysum(request ,id):
    # bdata = bookdata.objects.get(id=id)
    sdata = summarydata.objects.get(id=id)
    return render(request, "user/displaysum.html", {'smry': sdata})

def viewflash(request):
    user = request.session['user']

    flash = flasdata.objects.values('book_name').distinct().filter(username = user)

    return render(request, "user/viewflash.html", {'flash': flash})

def viewchapter(request,bn):
    # data = flasdata.objects.get(id=id)
    # bname = data.book_name
    # print(bname)
    # print(id)
    cdata = flasdata.objects.filter(book_name=bn)
    request.session['bname'] = bn
    q = cdata.values('chapter').distinct()
    return render(request, "user/viewchapter.html", {'flash': q})

def viewqstnchapter(request,bknm):
    chapdata = questiondata.objects.filter(book_name=bknm)
    request.session['bknm'] = bknm
    chq = chapdata.values('chapter').distinct()
    return render (request , "user/qstndiplychapter.html", {'qchap' : chq})

def displayquestions(request,id):
    qchap = id
    bname = request.session['bknm']
    print(bname)
    fdata = questiondata.objects.filter(book_name=bname, chapter=qchap)
    return render(request, "user/displayquestion.html", {'finalqstn': fdata})

def viewfinalflash(request,id):
    data = flasdata.objects.filter(chapter=id)
    # bname = data.book_name
    chap= id
    bname = request.session['bname']

    print(bname)
    # print(chap)
    fdata= flasdata.objects.filter(book_name=bname, chapter=chap )
    # return HttpResponse(chap)
    return render(request, "user/viewfinalflash.html", {'finalflash': fdata})



def qgen(request , id):

    try:
        global verbose
        verbose = True

        #txt = TextBlob(string)
        #txt="Bansoori is an Indian classical instrument.  "
        # txt="Ashik is a student.  "
        # Each sentence is taken from the string input and passed to genQuestion() to generate questions.
        # for sentence in txt.sentences:
        #     genQuestion(sentence)
        # id = 13
        # sumdata = summarydata ()
        # #data = sumdata.objects.filter(book_name=bn)
        # data=summarydata.objects.get(id=id)
        # x=data.summary
        if request.method == 'POST':
            a1 = int(request.POST.get('pstart'))
            a2 = int(request.POST.get('pend'))
            uname = request.session['user']
            book = bookdata.objects.get(id=id)
            chap = request.POST.get('chapter')
            filename = book.file
            f1 = filename.lstrip("/")
            bn = book.book_name
            # a1=5
            # a2=10
            a = []
            for k in range(a1, a2):
                a.append(k)
            x = convert2(f1, bn, pages=a)
        sentences = re.split(r' *[\.\?!][\'"\)\]]* *', x)
        for qg in sentences:
            genQuestion(qg,uname,bn,chap)

    except Exception as e:
        raise e
    return HttpResponse("finished qgen")


def genQuestion(line,uname,bn,chap):
    """
    outputs question from the given text
    """

    if type(line) is str:  # If the passed variable is of type string.
        line = TextBlob(line)  # Create object of type textblob.blob.TextBlob

    bucket = {}  # Create an empty dictionary

    for i, j in enumerate(line.tags):  # line.tags are the parts-of-speach in English
        if j[1] not in bucket:
            bucket[j[1]] = i  # Add all tags to the dictionary or bucket variable

    if verbose:  # In verbose more print the key,values of dictionary
        print('\n', '-' * 20)
        print(line, '\n')
        # print("TAGS:", line.tags, '\n')
        # print(bucket)

    question = ''  # Create an empty string

    # These are the english part-of-speach tags used in this demo program.
    # .....................................................................
    # NNS     Noun, plural
    # JJ  Adjective
    # NNP     Proper noun, singular
    # VBG     Verb, gerund or present participle
    # VBN     Verb, past participle
    # VBZ     Verb, 3rd person singular present
    # VBD     Verb, past tense
    # IN      Preposition or subordinating conjunction
    # PRP     Personal pronoun
    # NN  Noun, singular or mass
    # .....................................................................

    # Create a list of tag-combination

    l1 = ['NNP', 'VBG', 'VBZ', 'IN']
    l2 = ['NNP', 'VBG', 'VBZ']

    l3 = ['PRP', 'VBG', 'VBZ', 'IN']
    l4 = ['PRP', 'VBG', 'VBZ']
    l5 = ['PRP', 'VBG', 'VBD']
    l6 = ['NNP', 'VBG', 'VBD']
    l7 = ['NN', 'VBG', 'VBZ']

    l8 = ['NNP', 'VBZ', 'JJ']
    l9 = ['NNP', 'VBZ', 'NN']

    l10 = ['NNP', 'VBZ']
    l11 = ['PRP', 'VBZ']
    l12 = ['NNP', 'NN', 'IN']
    l13 = ['NN', 'VBZ']

    # With the use of conditional statements the dictionary is compared with the list created above

    if all(key in bucket for key in l1):  # 'NNP', 'VBG', 'VBZ', 'IN' in sentence.
        question = 'What' + ' ' + line.words[bucket['VBZ']] + ' ' + line.words[bucket['NNP']] + ' ' + line.words[
            bucket['VBG']] + '?'


    elif all(key in bucket for key in l2):  # 'NNP', 'VBG', 'VBZ' in sentence.
        question = 'What' + ' ' + line.words[bucket['VBZ']] + ' ' + line.words[bucket['NNP']] + ' ' + line.words[
            bucket['VBG']] + '?'


    elif all(key in bucket for key in l3):  # 'PRP', 'VBG', 'VBZ', 'IN' in sentence.
        question = 'What' + ' ' + line.words[bucket['VBZ']] + ' ' + line.words[bucket['PRP']] + ' ' + line.words[
            bucket['VBG']] + '?'


    elif all(key in bucket for key in l4):  # 'PRP', 'VBG', 'VBZ' in sentence.
        question = 'What ' + line.words[bucket['PRP']] + ' ' + ' does ' + line.words[bucket['VBG']] + ' ' + line.words[
            bucket['VBG']] + '?'

    elif all(key in bucket for key in l7):  # 'NN', 'VBG', 'VBZ' in sentence.
        question = 'What' + ' ' + line.words[bucket['VBZ']] + ' ' + line.words[bucket['NN']] + ' ' + line.words[
            bucket['VBG']] + '?'

    elif all(key in bucket for key in l8):  # 'NNP', 'VBZ', 'JJ' in sentence.
        question = 'What' + ' ' + line.words[bucket['VBZ']] + ' ' + line.words[bucket['NNP']] + '?'

    elif all(key in bucket for key in l9):  # 'NNP', 'VBZ', 'NN' in sentence
        question = 'What' + ' ' + line.words[bucket['VBZ']] + ' ' + line.words[bucket['NNP']] + '?'

    elif all(key in bucket for key in l11):  # 'PRP', 'VBZ' in sentence.
        if line.words[bucket['PRP']] in ['she', 'he']:
            question = 'What' + ' does ' + line.words[bucket['PRP']].lower() + ' ' + line.words[
                bucket['VBZ']].singularize() + '?'

    elif all(key in bucket for key in l10):  # 'NNP', 'VBZ' in sentence.
        question = 'What' + ' does ' + line.words[bucket['NNP']] + ' ' + line.words[bucket['VBZ']].singularize() + '?'

    elif all(key in bucket for key in l13):  # 'NN', 'VBZ' in sentence.
        question = 'What' + ' ' + line.words[bucket['VBZ']] + ' ' + line.words[bucket['NN']] + '?'

    # When the tags are generated 's is split to ' and s. To overcome this issue.
    if 'VBZ' in bucket and line.words[bucket['VBZ']] == "â€™":
        question = question.replace(" â€™ ", "'s ")

    # Print the genetated questions as output.
    if question != '':
        qdata = questiondata.objects.all()
        flag=0
        for da in qdata:
            if da.question==question:
                flag=1
        if flag==0:
            print('\n', 'Question: ' + question)
            qdata = questiondata ()
            qdata.userid = uname
            print (qdata.userid)
            qdata.question = question
            qdata.answer = line
            qdata.book_name = bn
            qdata.chapter = chap
            qdata.save()





