Data Science Image
=====
Lightweight image with Julia, R and Python and notebook kernels.

[Docker Hub Repo](https://hub.docker.com/r/burrito/notebook/)  
[Github Source](https://github.com/ajay-d/docker-notebook)

Based off of:
* Ubuntu 16.04 LTS
* Tensorflow 0.11 (CPU only)
* Julia 0.5.0
* R 3.3.1
   * dplyr 
   * stringr
   * tidyr
   * xgboost
* Python 3.5.2
   * keras
   * numpy
   * pandas
   * scikit-learn
   * xgboost

To start a notebook:
~~docker run -d -p 8888:8888 -v `pwd`:/home/work burrito/notebook jupyter notebook --no-browser --port 8888 --ip=0.0.0.0~~
~~docker run -d -p 8888:8888 burrito/notebook jupyter notebook --no-browser --port 8888 --ip=0.0.0.0~~
These should work, but <https://github.com/ipython/ipython/issues/7062>
```
$ docker run -d -p 8888:8888 -v `pwd`:/home/work burrito/notebook sh -c "jupyter notebook --no-browser --port 8888 --ip=0.0.0.0"
$ docker run -d -p 8888:8888 burrito/notebook sh -c "jupyter notebook --no-browser --port 8888 --ip=0.0.0.0"
```
---
Find IP address with `docker-machine ip default` on Windows
Visit <http://127.0.0.1:8888/> (with the noted IP) for Jupyter Notebook
Or <http://localhost:8888/> on Mac/Linux

To start container interactively:
-----
```
$ docker run -it burrito/notebook
$ R
```
---
To run a Python 3 script:
```
$ docker run -it -v `pwd`:/home/work burrito/notebook python3 script.py
```
---