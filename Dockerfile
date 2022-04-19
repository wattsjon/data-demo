FROM python:3.10.4-slim-buster

WORKDIR /app

COPY poetry.lock pyproject.toml ./


ENV POETRY_VERSION=1.1.13 \
  POETRY_VIRTUALENVS_CREATE=false

RUN apt-get update && apt-get install -y git

RUN pip install poetry==$POETRY_VERSION

RUN poetry install --no-dev

