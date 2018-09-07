#!/bin/bash

pdftotext main.pdf && sed -i -r "s/wordcount\{.*\}$/wordcount\{`wc main.txt | awk '{print $2}'`\}/g" preamble.tex 