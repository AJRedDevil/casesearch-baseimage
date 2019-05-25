FROM python:2-slim

LABEL maintainer="Ajan Lal Shrestha<ajan.shresh@gmail.com>"

RUN apt-get update -y && \
  apt-get install --no-install-recommends -y \
  libxml2-dev \
  libxslt-dev \
  python-dev &&\
  rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install -r requirements.txt && rm requirements.txt
