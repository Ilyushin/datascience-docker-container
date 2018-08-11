# Docker container for data scientists

Contains widely used Python libraries such as:
* TensorFlow
* Turicreate
* numpy               
* pandas 

And for interacting with the container Jupyter was pre-installed.

```angular2html
docker run --name jupyter -d -p 8888:8888 -it -v /host/directory:/home ilyushin/datascience-container:latest
```

**If you need to add any other libraries, please feel free to create a new issue.**


