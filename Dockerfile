FROM ubuntu:trusty
MAINTAINER Joaquin Salvarredy <joaquin@salvarredy.com.ar>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get -y dist-upgrade
RUN apt-get install -qy texlive-latex-base texlive-lang-spanish \
                        texlive-binaries texlive-latex-extra xindy \
                        texlive-fonts-recommended python-pygments gnuplot


RUN apt-get remove -y texlive-latex-base-doc texlive-latex-recommended-doc \
                     texlive-latex-extra-doc texlive-fonts-recommended-doc

RUN apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

RUN ln -s /usr/share/xindy/lang/spanish/modern-utf8-lang.xdy /usr/share/xindy/lang/spanish/utf8-lang.xdy
RUN ln -s /usr/share/xindy/lang/spanish/modern-utf8-test.xdy  /usr/share/xindy/lang/spanish/utf8-test.xdy 
RUN ln -s /usr/share/xindy/lang/spanish/modern-utf8.xdy  /usr/share/xindy/lang/spanish/utf8.xdy      


WORKDIR /data
VOLUME ["/data"]
