from __future__ import absolute_import
from __future__ import division, print_function, unicode_literals

import os
import PyPDF2
import numpy
from StudyTab.settings import BASE_DIR
from sumy.nlp.stemmers import Stemmer
from sumy.nlp.tokenizers import Tokenizer
from sumy.parsers.plaintext import PlaintextParser
from sumy.summarizers.lsa import LsaSummarizer as Summarizer
from sumy.utils import get_stop_words

ROOT_MEDIA = str(os.path.join(BASE_DIR))
RESULT_ROOT = os.path.join(BASE_DIR, "results/")


def pdfToText(BookPAth, bookid):
    pdfContent = ""
    summaryText = ""
    MEDIA = ROOT_MEDIA + str(BookPAth)
    pdfFileObj = open(

        MEDIA,
        'rb'

    )

    PdfReader = PyPDF2.PdfFileReader(pdfFileObj)
    totalPage = PdfReader.numPages
    for page in range(totalPage):
        page = PdfReader.getPage(page)
        page_content = page.extractText()
        page_content = page_content
        pdfContent = pdfContent + page_content
    with open(RESULT_ROOT + "BookText"+bookid+".txt", "w") as f:
        f.write(pdfContent)
    f.close()

    LANGUAGE = "czech"
    SENTENCES_COUNT = 50
    parser = PlaintextParser.from_file(RESULT_ROOT + "BookText"+bookid+".txt", Tokenizer(LANGUAGE))
    stemmer = Stemmer(LANGUAGE)

    summarizer = Summarizer(stemmer)
    summarizer.stop_words = get_stop_words(LANGUAGE)

    for sentence in summarizer(parser.document, SENTENCES_COUNT):
        summaryText = summaryText + str(sentence)

    with open(RESULT_ROOT + "SummaryText"+bookid+".txt", "w") as f:
        f.write(summaryText)
    f.close()

    return pdfContent
