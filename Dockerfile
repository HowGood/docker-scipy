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

# Use pip to install the latest packages
RUN pip install --no-cache-dir --upgrade \
      cython \
      numpy \
      scipy \
      pandas \
      gensim \
      ipython \
      ptpython
