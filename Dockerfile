FROM    alpine:latest
ADD     build_pdftk.sh /bin/
ENV     VER_PDFTK=2.02
RUN     apk --no-cache add --update unzip wget make fastjar gcc gcc-java g++ && \
        /bin/build_pdftk.sh && \
        apk del build-base unzip wget make fastjar && \
        rm -rf /var/cache/apk/* && \
        pdftk
