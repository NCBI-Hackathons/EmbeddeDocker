#!/bin/sh
 docker build -t "alpine-bwa-sam-builder" build
 rm -rf usr/local/bin
 mkdir -p usr/local/bin
 docker run --rm -v ${PWD}:/data alpine-bwa-sam-builder \
 /bin/bash -c 'cp /usr/local/bin/* /data/usr/local/bin/.'
 docker rmi alpine-bwa-sam-builder
 docker build -t "biodepot/alpine-bwa-samtools:3.7-0.7.15-1.9-52-g651bf14" .
