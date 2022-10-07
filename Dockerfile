FROM rpbs/seamless@sha256:086bd888ec1340ef400b56941e78f6d1dd556dbac65fe4f441873d993c05f400
LABEL author="Sjoerd de Vries <sjoerd.de-vries@inserm.fr>"
LABEL version="0.9"
COPY jupyterlab-shortcuts.json /home/jovyan/.jupyter/lab/user-settings/@jupyterlab/shortcuts-extension/shortcuts.jupyterlab-settings
COPY notebooks /home/jovyan/notebooks
RUN chown -R jovyan /home/jovyan && chmod -R g=u /home/jovyan
WORKDIR /home/jovyan/notebooks