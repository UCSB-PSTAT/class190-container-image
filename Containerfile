FROM registry.cloud.college.ucsb.edu/ucsb/scipy-base:latest

MAINTAINER LSIT Systems <lsitops@lsit.ucsb.edu>

USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
    texlive-xetex \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-plain-generic \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN conda install -y nltk 

RUN pip install gensim

USER $NB_USER
