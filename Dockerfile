FROM python:3.11.6-alpine3.17

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /tmp/requirements.txt
COPY ./requirements.dev.txt /tmp/requirements.dev.txt
COPY ./app /app
WORKDIR /app

ARG DEV=false

# Можно добавлять shell условия в команду RUN 
RUN python -m pip install --upgrade pip && \
    python -m pip install -r /tmp/requirements.txt && \
    if [ $DEV = "true" ]; \
        then python -m pip install -r /tmp/requirements.dev.txt ; \
    fi && \
    rm -rf /tmp

