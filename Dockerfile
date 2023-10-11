FROM python:3.11.6-alpine3.17

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /tmp/requirements.txt

COPY ./app /app

WORKDIR /app

EXPOSE 8000

RUN python -m pip install --upgrade pip && \
    python -m pip install -r /tmp/requirements.txt && \
    rm -rf /tmp

CMD []



