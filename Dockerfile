FROM quay.io/jupyter/scipy-notebook:python-3.12.8

RUN python -m pip install jupyterlab-vim
