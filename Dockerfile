FROM    alpine:latest
VOLUME  /usr/local/bin
RUN     apk --no-cache add --update unzip wget gcc g++ make fastjar gcc-java
RUN     wget --no-check-certificate http://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/pdftk-2.02-src.zip && unzip pdftk-2.02-src.zip && \
        cd pdftk-2.02-dist/pdftk && make -f Makefile.Redhat && make -f Makefile.Redhat install
