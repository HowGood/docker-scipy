# howgood/scipy:tools

FROM howgood/scipy:latest

# Install interactive shell tools
RUN pip install --no-cache-dir --upgrade \
      pandas \
      xlrd \
      xlwt \
      xlsxwriter \
      sqlparse \
      cchardet \
      ipython \
      ptpython \
    && rm -Rf ~/.cache ~/.local /tmp/*
