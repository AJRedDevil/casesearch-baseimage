FROM python:2-slim

LABEL maintainer="Ajan Lal Shrestha<ajan.shresh@gmail.com>"

RUN apt-get update -y && apt-get install -y \
  libxml2-dev \
  libxslt-dev \
  python-dev

RUN mkdir -p /usr/src
WORKDIR /usr/src

COPY requirements.txt .
RUN pip install -r requirements.txt && rm requirements.txt