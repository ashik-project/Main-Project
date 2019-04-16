from io import StringIO
from pdfminer.pdfinterp import PDFResourceManager, PDFPageInterpreter
from pdfminer.converter import TextConverter
from pdfminer.layout import LAParams
from pdfminer.pdfpage import PDFPage
from StudyTab.settings import BASE_DIR
import os
import sys, getopt
from django.http import HttpResponse

ROOT_MEDIA = str(os.path.join(BASE_DIR))
RESULT_ROOT = os.path.join(BASE_DIR, "results/")

#converts pdf, returns its text content as a string
def convert(fname,bn, pages=None):
    if not pages:
        pagenums = set()
    else:
        pagenums = set(pages)

    output = StringIO()
    manager = PDFResourceManager()
    converter = TextConverter(manager, output, laparams=LAParams())
    interpreter = PDFPageInterpreter(manager, converter)

    infile = open(fname, 'rb')
    for page in PDFPage.get_pages(infile, pagenums):
        interpreter.process_page(page)
    infile.close()
    converter.close()
    text = output.getvalue()
    output.close

    # file1 = open("SummaryText"+bn+".txt", "w")
    file1 = open("SummaryText"+bn+".txt", "w")
    file1.write(text)
    file1.close()


    return text