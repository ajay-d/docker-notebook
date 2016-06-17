##Jupyter Notebook + Flask Docker Image

[Docker Hub Repo](https://hub.docker.com/r/burrito/notebook/)
[Github Source](https://github.com/ajay-d/docker-notebook)

##How to run
Select a running machine
```
docker-machine ls
eval $(docker-machine env machine_name)
```
Take note of IP address

Pull image
```
docker pull burrito/flask
```
Image is based off of [Scipy Notebook](https://github.com/jupyter/docker-stacks/tree/master/scipy-notebook)

Run Notebook
```
docker run -d -p 8888:8888 jupyter/scipy-notebook
```
Visit <http://192.168.99.101:8888/> (with the noted IP) for Jupyter Notebook

Windows:
```
winpty docker run -t -i burrito/flask bash
winpty docker run -t -i -v `pwd`:/home/jovyan/work burrito/flask bash
```
Exit terminal with `CTRL-P` `CTRL-Q` 

Mac:
```
docker run -t -i burrito/flask bash
```
Exit terminal with `exit` command