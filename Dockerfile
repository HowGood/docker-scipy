# howgood/scipy:notebook

FROM howgood/scipy:latest

VOLUME /notebooks
WORKDIR /notebooks

RUN pip install --upgrade ipython[notebook]

EXPOSE 8888

CMD ["/usr/local/bin/ipython", "notebook", "--no-browser", "--ip", "*", "--port", "8888"]
