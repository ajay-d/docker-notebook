FROM jupyter/scipy-notebook
MAINTAINER ajay@deonarine.com

USER root
RUN conda upgrade --yes \
	'pandas' \
    && conda clean -t -p --yes
RUN conda install --quiet --yes \
    'flask'
	
USER jovyan