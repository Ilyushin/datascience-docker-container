# Docker container for data scientists

Contains widely used Python libraries such as:
* TensorFlow
* Turicreate
* numpy               
* pandas 

And for interacting with the container Jupyter was pre-installed.

```angular2html
docker run --name jupyter -p 8888:8888 -it -v /host/directory:/container/directory ilyushin/datascience-container:latest
```
