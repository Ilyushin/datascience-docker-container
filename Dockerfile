FROM ubuntu:16.04
LABEL maintainer="Evgene Ilyushin <evgene.ilyushin@gmail.com>"

RUN apt-get update && apt-get upgrade -y && \
    apt-get -y install software-properties-common &&\
    add-apt-repository ppa:jonathonf/python-3.6 && \
    apt-get update && \
    apt-get -y install python3.6 && \
    apt-get -y install python3.6-dev && \
    apt-get -y install python3.6-venv && \
    apt-get -y install wget && \
    wget https://bootstrap.pypa.io/get-pip.py && \
    python3.6 get-pip.py && \
    update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.5 1 && \
    update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 2 && \
    pip3 install --upgrade pip && \
    pip3 install jupyterlab && \
    pip3 install tornado
#    pip3 install tornado==4.5.3 &&\
#    pip3 install jupyter_contrib_nbextensions && \
#    jupyter contrib nbextension install --user

RUN apt-get install -y libblas3 liblapack3 libstdc++6 python-setuptools
RUN pip3 install turicreate
#RUN pip3 install -U tensorflow==1.8
RUN pip3 install -U tensorflow
RUN pip3 install -U jupyter-tensorboard

RUN pip3 install sympy scipy sklearn matplotlib keras tqdm nltk opencv-python
RUN apt-get update && apt-get install -y libsm6 libxext6 libgtk2.0-dev

COPY start-notebook.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/start-notebook.sh

CMD ["start-notebook.sh"]