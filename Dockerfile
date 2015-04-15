# howgood/scipy

FROM howgood/python

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
         libblas-dev \
         liblapack-dev \
         gfortran \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean -y \
    && apt-get autoremove -y

RUN pip install cython \
    && pip install \
      numpy \
      scipy \
      pandas \
      gensim \
    && pip install -U \
      ipython \
      ptpython
