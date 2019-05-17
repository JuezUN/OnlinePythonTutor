FROM python:3

WORKDIR /usr/src/app

RUN pip install --no-cache-dir bottle

COPY . .

EXPOSE 8003

WORKDIR /usr/src/app/v3
CMD [ "python3", "bottle_server.py" ]
