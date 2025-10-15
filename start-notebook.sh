#!/usr/bin/env bash


#cd /home/data

#rm jupyter.key jupyter.pem
#openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
#  -subj "/C=US/ST=Denial/L=Springfield/O=Dis/CN=gpu.ilyushin.science" \
#  -keyout jupyter.key -out jupyter.pem
cd /home
#tensorboard --logdir=/home/container/tensorboard_logs --port=7007 &
#jupyter notebook --NotebookApp.token='' --ip=0.0.0.0 --allow-root --port=8888

cd /home && nohup jupyter lab --NotebookApp.token='NNmzP@s1#fhZ' --ip=0.0.0.0 --allow-root --port=8888 > nohup_jup_container.out
#jupyter nbextension enable --py widgetsnbextension
#jupyter lab --NotebookApp.token='NNmzP@s1#fhZ' --ip=0.0.0.0 --allow-root --port=8888
#  --certfile=./data/jupyter/certs/ssl.cert.pem \
#  --keyfile=./data/jupyter/private/ssl.key.pem
jupyter nbextension enable --py widgetsnbextension