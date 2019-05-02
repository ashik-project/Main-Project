from django.db import models

# Create your models here.
class bookdata(models.Model):
    book_name = models.CharField(max_length=30)
    course = models.CharField(max_length=30)
    branch = models.CharField(max_length=30)
    edition = models.CharField(max_length=30)
    year = models.CharField(max_length=30)
    author = models.CharField(max_length=30)
    file = models.CharField(max_length=255)
    status = models.CharField(max_length=30)
    user = models.CharField(max_length=30)


    class Meta:
        db_table = 'tbl_bookdata'


class summarydata(models.Model):
    book_name = models.CharField(max_length=30)
    summary_id = models.CharField(max_length=30)
    summary = models.CharField(max_length=4000)
    date = models.CharField(max_length=30)
    user_id = models.CharField(max_length=30)
    chapter = models.CharField(max_length=30)


    class Meta:
        db_table = 'tbl_summarydata'

class flasdata(models.Model):
    book_name = models.CharField(max_length=30)
    book_id = models.CharField(max_length=30)
    flash = models.CharField(max_length=2000)
    chapter = models.CharField(max_length=50, default='1')
    username = models.CharField(max_length=30,default='admin')


    class Meta:
        db_table = 'tbl_flasdata'



class userdata(models.Model):
    username = models.CharField(max_length=30)
    email = models.CharField(max_length=30)
    password = models.CharField(max_length=30)


    class Meta:
        db_table = 'tbl_user'

class login(models.Model):
    username = models.CharField(max_length=30)
    type = models.CharField(max_length=30)
    password = models.CharField(max_length=30)

    class Meta:
        db_table = 'login'

class questiondata(models.Model):
    userid = models.CharField(max_length=30)
    book_name = models.CharField(max_length=30)
    chapter = models.CharField(max_length=30)
    question = models.CharField(max_length=150)
    answer = models.CharField(max_length=500)

    class Meta:
        db_table = 'tbl_question'