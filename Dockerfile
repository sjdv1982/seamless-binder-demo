FROM rpbs/seamless@sha256:7da50497c31fd29609b81f6b5d264beaa45321ae1e2c0a7a967ade3532cc3d9f
LABEL author="Sjoerd de Vries <sjoerd.de-vries@inserm.fr>"
LABEL version="0.8"
COPY jupyterlab-shortcuts.json /home/jovyan/.jupyter/lab/user-settings/@jupyterlab/shortcuts-extension/shortcuts.jupyterlab-settings
COPY notebooks /home/jovyan/notebooks
RUN chown -R jovyan /home/jovyan && chmod -R g=u /home/jovyan
WORKDIR /home/jovyan/notebooks