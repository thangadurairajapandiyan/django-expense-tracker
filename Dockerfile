#pull the offical base image
FROM python:3.6-alpine3.8
#set work directory
WORKDIR /use/src/app
#set environment variable
ENV PYTHONDONTWRITEBYCODE 1
ENV PYTHON UNBFFERED 1
#install dependencies
RUN apk add --update alpine-sdk && apk add libffi-dev openssl-dev
RUN pip install --upgrade pip
COPY ./requirements.txt
COPY ./usr/src/app
EXPOSE 8000
CMD ["python","manage.py","runseever","0.0.0.0.:8000"]
