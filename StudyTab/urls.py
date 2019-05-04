"""StudyTab URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.conf import settings
from django.conf.urls.static import static
from django.contrib import admin
from django.urls import path
from app1 import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('index/', views.index),
    path('Adminhome/', views.Adminhome),
    path('Addbook/', views.Addbook),
    path('Removebook/', views.Removebook),
    path('Userhome/', views.Userhome),
    path('SummaryGen/<int:id>', views.SummaryGen),
    path('QuestionGen/', views.QuestionGen),
    path('FlashGen/', views.flascard),
    path('booksave/', views.booksave),
    path('viewdata/', views.dataview),
    path('deleteitem/<int:id>', views.deleteitem),
    path('p2t/<int:id>', views.p2t),
    path('summary/<int:id>', views.summary),
    path('pageselect/<int:id>', views.pageselect),
    path('pageselectsum/<int:id>', views.pageselectsum),
    path('viewsumpage/', views.viewsumpage),
    path('viewsumm/', views.viewsumm),
    # path('viewflash/', views.viewflash),viewsum
    path('viewflashpage/<int:id>', views.viewflashpage),
    path('viewsum/', views.viewsum),
    path('displaysum/<int:id>',views.displaysum),
    path('viewflash/',views.viewflash),
    path('viewchapter/<str:bn>', views.viewchapter),
    path('viewfinalflash/<int:id>', views.viewfinalflash),
    path('home/', views.home),
    path('register/',views.register),
    path('userreg/',views.userreg),
    path('loginpage/', views.loginpage),
    path('loginp/', views.loginp),
    path('qgen/<int:id>', views.qgen),
    path('genQuestion/', views.genQuestion),
    path('flashgenchapter/<str:bn>' , views.flashgenchapter),
    path('fgen/<int:id>' , views.fgen),
    path('fgen1/<int:id>' , views.fgen1),
    path('flashpageselect/<int:id>' , views.flashpageselect),
    path('summerylist/', views.summerylist),
    path('summerylistdata/',views.summerylistdata),
    path ('flaslist/',views.flaslist),
    path('questionlist/',views.questionlist),
    path('qstnpageselect/<int:id>' , views.qstnpageselect),
    path('qestionlistdisplay/',views.qestionlistdisplay),
    path('viewqstnchapter/<str:bknm>',views.viewqstnchapter),
    path('displayquestions/<str:id>',views.displayquestions),
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
