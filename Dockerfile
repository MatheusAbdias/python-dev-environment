FROM python:3.11-slim

RUN useradd -ms /bin/bash python

RUN pip install poetry

USER python

WORKDIR /home/python/app

COPY . /home/python/app

CMD [ "tail", "-f", "/dev/null" ]