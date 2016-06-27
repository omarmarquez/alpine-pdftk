FROM    alpine:latest
RUN     apk --no-cache add --update unzip wget gcc g++ make fastjar gcc-java
ADD     build_pdftk.sh /bin/
ENV     VER_PDFTK=2.02
CMD     ["/bin/build_pdftk.sh"]
