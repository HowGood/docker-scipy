# howgood/scipy:notebook

FROM howgood/scipy:latest

VOLUME /notebooks
WORKDIR /notebooks

RUN pip install -U ipython[notebook]

EXPOSE 8888

CMD ipython notebook --no-browser --port 8888
