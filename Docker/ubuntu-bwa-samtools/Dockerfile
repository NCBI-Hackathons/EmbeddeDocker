FROM ubuntu

MAINTAINER Aakash Sur asur@uw.edu

USER root

RUN apt-get update && \
	apt-get install -y build-essential \
	wget \
	zlib1g-dev \
	libncurses5-dev \
	libbz2-dev \
	liblzma-dev

RUN mkdir /home/bwa && \
	cd /home/bwa && \
	wget https://github.com/lh3/bwa/archive/v0.7.17.tar.gz && \
	tar -xvzf v0.7.17.tar.gz && \
	cd bwa-0.7.17 && \
	make && \
	mv ./bwa /usr/local/bin/ && \
	cd /home && \
	rm -r /home/bwa

RUN mkdir /home/samtools && \
	cd /home/samtools && \
	wget https://github.com/samtools/samtools/releases/download/1.9/samtools-1.9.tar.bz2 && \
	tar -xvjf samtools-1.9.tar.bz2 && \
	cd samtools-1.9 && \
	./configure && \
	make && \
	make install && \
	cd /home && \
	rm -r samtools

RUN apt-get clean && \
	apt-get remove --yes --purge build-essential 


