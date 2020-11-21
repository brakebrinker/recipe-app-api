FROM python:3.8.6-alpine

ENV PYTHONUNBUFFERED 1

COPY ./requirenments.txt /requirenments.txt
RUN pip install -r requirenments.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
