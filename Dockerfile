FROM ubuntu:18.04


ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y -q texlive texlive-latex-extra texlive-lang-cjk python-pip make latexmk git zlib1g-dev
RUN pip install --upgrade pip
RUN pip install --upgrade sphinx
RUN pip install sphinxcontrib-textstyle sphinxcontrib-blockdiag sphinxcontrib-nwdiag sphinxcontrib-seqdiag sphinxcontrib-actdiag sphinxcontrib-getstart-sphinx sphinxcontrib-indesignbuilder

RUN mkdir documents

WORKDIR /documents
VOLUME /documents

CMD ["/bin/bash"]
