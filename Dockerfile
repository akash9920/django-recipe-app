FROM python:3.7-alpine
MAINTAINER Akash Anand

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# creating a directory and using it as  awork directory on docker

RUN mkdir /app
WORKDIR /app
COPY ./app /app

#this copies app on out local to the docker imah

#wea re creating a user and runnning that user
RUN adduser -D user
USER user
