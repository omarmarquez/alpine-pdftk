#!/bin/sh
    
    wget --no-check-certificate http://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/pdftk-2.02-src.zip && \
    unzip pdftk-2.02-src.zip && \
    (cd pdftk-2.02-dist/pdftk && make -f Makefile.Redhat && make -f Makefile.Redhat install) && \
    rm -rf pdftk-2.02-dist pdftk-2.02-src.zip 
