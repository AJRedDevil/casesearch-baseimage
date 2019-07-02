FROM casesearch_base

LABEL maintainer="Ajan Lal Shrestha<ajan.shresh@gmail.com>"

WORKDIR /usr/src
COPY requirements.txt .
RUN pip install -r requirements.txt && rm requirements.txt