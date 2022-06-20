FROM rpbs/seamless@sha256:1256c6a1e683ba96909a64d676e47404f645a1f2d2e9ec88388eca8f1e4d4663
LABEL author="Sjoerd de Vries <sjoerd.de-vries@inserm.fr>"
LABEL version="0.8"
COPY jupyterlab-shortcuts.json /home/jovyan/.jupyter/lab/user-settings/@jupyterlab/shortcuts-extension/shortcuts.jupyterlab-settings
COPY notebooks /home/jovyan/notebooks
RUN chown -R jovyan /home/jovyan && chmod -R g=u /home/jovyan
WORKDIR /home/jovyan/notebooks