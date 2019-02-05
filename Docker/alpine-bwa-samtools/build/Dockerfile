FROM alpine:3.7
RUN apk add --no-cache build-base zlib-dev bzip2-dev xz-dev ncurses-libs ncurses-dev git bash nano
ADD bwa /source/bwa
ADD htslib /source/htslib
ADD samtools /source/samtools
RUN cd /source/bwa/src && make clean && make && cp bwa /usr/local/bin/bwa
RUN cd /source/htslib && make clean && make && make install
RUN cd /source/samtools && make clean && make && make install
