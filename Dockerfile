FROM continuumio/anaconda3 AS base 

ENV uid=1000

RUN apt install git

RUN mkdir -p /opt/notebooks

RUN chown -R $uid:$uid /opt/notebooks

EXPOSE 8888

USER $uid

RUN conda create -n dspwp2 python=3.8.2 jupyter=1.0.0 pandas=1.2.1 scikit-learn=0.23.2 numpy=1.19.2 matplotlib=3.3.2 seaborn=0.11.1 python-graphviz=0.15 xlrd=2.0.1

RUN activate dspwp2



