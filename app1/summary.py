from __future__ import absolute_import
from __future__ import division, print_function, unicode_literals
from sumy.parsers.plaintext import PlaintextParser
from sumy.nlp.tokenizers import Tokenizer
from sumy.summarizers.lsa import LsaSummarizer as Summarizer
from sumy.nlp.stemmers import Stemmer
from sumy.utils import get_stop_words
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

ROOT_MEDIA = str(os.path.join(BASE_DIR))
RESULT_ROOT = os.path.join(BASE_DIR, "results/")

#converts pdf, returns its text content as a string
def summary(fname,bn, pages=None):
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
    file1 = open("BookText"+bn+".txt", "w")
    file1.write(text)
    file1.close()

    summaryText = ''
    LANGUAGE = "czech"
    SENTENCES_COUNT = 20
    parser = PlaintextParser.from_file("BookText" + bn + ".txt", Tokenizer(LANGUAGE))
    stemmer = Stemmer(LANGUAGE)

    summarizer = Summarizer(stemmer)
    summarizer.stop_words = get_stop_words(LANGUAGE)

    for sentence in summarizer(parser.document, SENTENCES_COUNT):
        summaryText = summaryText + str(sentence)
    file1 = open("SummaryText" + bn + ".txt", "w")
    file1.write(summaryText)
    file1.close()

    return summaryText
