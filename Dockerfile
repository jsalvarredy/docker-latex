FROM ubuntu:trusty
MAINTAINER Joaquin Salvarredy <joaquin@salvarredy.com.ar>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q
RUN apt-get install -qy texlive-latex-base texlive-lang-spanish texlive-binaries texlive-latex-extra xindy
RUN apt-get install -qy python-pygments 
RUN apt-get install -qy gnuplot
RUN ln -s /usr/share/xindy/lang/spanish/modern-utf8-lang.xdy /usr/share/xindy/lang/spanish/utf8-lang.xdy
RUN ln -s /usr/share/xindy/lang/spanish/modern-utf8-test.xdy  /usr/share/xindy/lang/spanish/utf8-test.xdy 
RUN ln -s /usr/share/xindy/lang/spanish/modern-utf8.xdy  /usr/share/xindy/lang/spanish/utf8.xdy      


WORKDIR /data
VOLUME ["/data"]
