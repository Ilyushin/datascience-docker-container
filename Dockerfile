FROM nvcr.io/nvidia/tensorflow:19.09-py3
LABEL maintainer="Evgene Ilyushin <evgene.ilyushin@gmail.com>"

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y wget
RUN apt-get install -y nano
RUN apt-get install -y ffmpeg
#RUN apt-get install -y build-essential checkinstall
#RUN apt-get install -y libreadline-gplv2-dev libncursesw5-dev libssl-dev \
#    libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev
#
#
#RUN cd /usr/src
#RUN wget https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz
#RUN tar xzf Python-3.7.4.tgz
#RUN cd Python-3.7.4
#RUN ./configure --enable-optimizations
#RUN make altinstall

RUN pip3 install jupyter \
    jupyterlab \
    widgetsnbextension \
    ipywidgets \
    sympy \
    deeppavlov \
#    scipy \
#    sklearn \
    matplotlib \
#    keras \
#    tqdm \
    nltk \
    opencv-python \
    jupyter-tensorboard \
#    pandas \
#    numpy \
    pymystem3 \
    pydub \
    signal-transformation \
    pdfminer.six \
    tensorflow-datasets \
    seaborn

RUN python3 -m deeppavlov install squad_bert

#RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.5 1
#RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.7 2

#RUN apt-get install -y nodejs npm

COPY start-notebook.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/start-notebook.sh

CMD ["start-notebook.sh"]