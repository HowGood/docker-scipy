# howgood/scipy:jupyter

FROM howgood/scipy:tools

# Install tini to manage stray jupyter processes
RUN TINI_VERSION='0.9.0' \
    curl -L -o /usr/bin/tini \
      "https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini" \
    && chmod +x /usr/bin/tini

# Install the ipython kernel spec, and run it. Then install jupyter/ipynotebook
RUN pip install --no-cache-dir --upgrade ipykernel \
    && python -m ipykernel.kernelspec \
    && pip install --no-cache-dir --upgrade \
         jupyter \
         ipython[notebook] \
         widgetsnbextension \
    && rm -rf /root/.cache /root/.local /tmp/*

# Add default wildcard ip to jupyter config
RUN mkdir -p -m 700 /root/.jupyter/ \
    && echo "c.NotebookApp.ip = '*'" >> /root/.jupyter/jupyter_notebook_config.py

# Add a notebooks volume, and default to that working directory
ENV NOTEBOOK_DIR /usr/src/notebooks
VOLUME ${NOTEBOOK_DIR}
WORKDIR ${NOTEBOOK_DIR}

EXPOSE 8888

ENTRYPOINT ["tini", "--"]
CMD ["jupyter", "notebook", "--no-browser"]
