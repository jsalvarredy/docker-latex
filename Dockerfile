FROM ubuntu:trusty
MAINTAINER Joaquin Salvarredy <joaquin@salvarredy.com.ar>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q
RUN apt-get install -qy texlive-latex-base texlive-lang-spanish texlive-binaries texlive-latex-extra xindy
RUN apt-get install -qy python-pygments 
RUN apt-get install -qy gnuplot

WORKDIR /data
VOLUME ["/data"]
