# udacity-devops-lesson5-finalproject
Udacity Devops Nanodegree - Lesson 5 - Final Project

[![<pgcorriente>](https://circleci.com/gh/pgcorriente/udacity-devops-lesson5-finalproject.svg?style=svg)](https://app.circleci.com/pipelines/github/pgcorriente/udacity-devops-lesson5-finalproject/1/workflows/4f877ee0-fad3-4f6d-b7a0-fc5e811bfb4b)

# Project Summary
This project operationalizes a Machine Learning Microservice API written in Python using Docker and Kubernetes. Pylint is used to lint the Python code, while Hadolint is used to lint the Dockerfile code.

# What is included
The project includes a number of files, namely:
- app.py: Microservice written in Python that returns a prediction of the housing prices in Boston based in a number of parameters
- requirements.txt: libraries required to run the microservice
- Dockerfile: yaml file to build a Docker container that will run the microservice
- Makefile: instructions to setup, install, test and lint the Python application

The project also includes several bash scripts intended to automate the deployment of a Docker container and a Kubernetes pod, as well as a script to feed data to the microservice and retrieve a prediction:
- run_docker.sh: Creates a docker image where the microservice runs
- run_kubernetes.sh: Creates a Kubernetes pod based off the Docker image
- make_prediction.sh: Calls the microservice with a set of data and retrieves a prediction

Finally, the output_txt_files contain the text outputs required to successfully complete this exercise.

# How to run
- Run run_docker.sh - This will create a Docker image called pgcorriente/lesson5-final-project. Change "pgcorriente" to your docker username. This script will also run the image locally on port 8000
- Run upload_docker.sh - This will upload the Docker image to Dockerhub. Change "pgcorriente" in the dockerpath variable to your docker username.
- Run run_kubernetes.sh - This will retrieve the image you uploaded to Dockerhub and run it locally in a pod. You will need to run minikube (or equivalent) on your local environment. Change "pgcorriente" in the dockerpath variable to your docker username. The pod will run on port 8000 of your local environment.
- Run make_prediction.sh - This will feed a set of data to the pod and retrieve a prediction. You can change the data set to your need.
