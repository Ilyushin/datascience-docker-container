#!/usr/bin/env bash

exec cd /home && jupyter notebook --NotebookApp.token='' --ip=0.0.0.0 --allow-root --port=8888