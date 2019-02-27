# Docker container for data scientists

Contains widely used Python libraries such as:
* TensorFlow (r1.8)
* Keras
* Turicreate
* numpy               
* pandas
* sklearn
* sympy
* scipy 
* matplotlib
* tqdm

And for interacting with the container Jupyter was pre-installed.

```
docker run --name jupyter -d -p 8888:8888 -p 7007:7007 -it -v /host/directory:/home ilyushin/datascience-container:latest
```

**If you need to add any other libraries, please feel free to create a new issue.**


