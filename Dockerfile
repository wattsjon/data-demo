FROM python:3.10

WORKDIR /app

COPY poetry.lock pyproject.toml ./


ENV PYTHONPATH=${PYTHONPATH}:${PWD} \
   # poetry:
  POETRY_VERSION=1.1.13 \
  POETRY_NO_INTERACTION=1 \
  POETRY_VIRTUALENVS_CREATE=false \
  POETRY_CACHE_DIR='/var/cache/pypoetry' \
  POETRY_HOME='/usr/local'

RUN pip install 'poetry==$POETRY_VERSION'

RUN poetry config virtualenvs.create false
RUN poetry install --no-dev
