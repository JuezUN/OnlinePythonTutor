FROM python:2

WORKDIR /usr/src/app

RUN pip install --no-cache-dir bottle

COPY . .

EXPOSE 8003

WORKDIR /usr/src/app/v3
CMD [ "python", "bottle_server.py" ]
