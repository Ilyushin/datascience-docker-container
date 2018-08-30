#!/usr/bin/env bash

cd /home
exec jupyter notebook --NotebookApp.token='' --ip=0.0.0.0 --allow-root --port=8888
exec tensorboard --logdir=./tensorboard_logs --port=7007