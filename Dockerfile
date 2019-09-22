ARG PYTHON=python:2
FROM $PYTHON

WORKDIR /usr/src/app

RUN pip install --no-cache-dir bottle

COPY . .

EXPOSE 8003

WORKDIR /usr/src/app/v3

ENV PY_CMD python
CMD $PY_CMD bottle_server.py
