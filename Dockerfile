FROM python:2

WORKDIR /usr/src/app

RUN pip install --no-cache-dir bottle

COPY . .

EXPOSE 8003

CMD [ "python", "./v3/bottle_server.py" ]
