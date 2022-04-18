FROM python:3.10

WORKDIR /app

COPY poetry.lock pyproject.toml ./


ENV POETRY_VERSION=1.1.13 \
  POETRY_VIRTUALENVS_CREATE=false

RUN pip install poetry==$POETRY_VERSION

RUN poetry install --no-dev