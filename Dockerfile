FROM rpbs/seamless:0.7
LABEL author="Sjoerd de Vries <sjoerd.de-vries@inserm.fr>"
LABEL version="0.7"
RUN cd /home/jovyan && rm -rf work seamless-docker seamless-scripts seamless-examples 
COPY notebooks /home/jovyan/notebooks
WORKDIR /home/jovyan/notebooks