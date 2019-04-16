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


    class Meta:
        db_table = 'tbl_bookdata'





