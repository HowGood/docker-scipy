# howgood/scipy

FROM howgood/python

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
         libblas-dev \
         liblapack-dev \
         cython \
         gfortran \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean -y \
    && apt-get autoremove -y

RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | python2

RUN pip install \
      numpy \
      scipy \
      pandas \
      gensim \
    && pip install -U \
      ipython \
      ptpython
