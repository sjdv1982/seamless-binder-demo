FROM rpbs/seamless@sha256:ccbe1990479b5f3ff8e9b471688d0400b06bbcad73b590fa491b4d1165669bb0
LABEL author="Sjoerd de Vries <sjoerd.de-vries@inserm.fr>"
LABEL version="0.7"
RUN cd /home/jovyan && rm -rf work seamless-docker seamless-examples 
COPY jupyterlab-shortcuts.json /home/jovyan/.jupyter/lab/user-settings/@jupyterlab/shortcuts-extension/shortcuts.jupyterlab-settings
COPY notebooks /home/jovyan/notebooks
RUN chown -R jovyan /home/jovyan && chmod -R g=u /home/jovyan
WORKDIR /home/jovyan/notebooks