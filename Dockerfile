FROM library/python:3.9-slim

WORKDIR /app
ADD . /app
RUN apt update && apt install curl gcc -y && python setup.py install

EXPOSE 8081
