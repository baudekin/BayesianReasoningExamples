FROM quay.io/jupyter/scipy-notebook:python-3.12.8

RUN python -m pip install jupyterlab-vim

COPY jupyter /home/jovyan/.jupyter
USER root
RUN chown -R jovyan:users /home/jovyan/.jupyter
USER jovyan 

