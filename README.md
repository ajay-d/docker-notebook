Data Science Image
=====
Lightweight image with Julia, R and Python.
Comes in under 400 MB

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