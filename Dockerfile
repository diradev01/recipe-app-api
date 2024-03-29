FROM python:3.7-alpine
#FROM python:3.8-rc-alpine
LABEL maintainer="gaku"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
