FROM node:6.11.5

WORKDIR /home

COPY . .

RUN make deps

EXPOSE 4000

RUN npm install forever

RUN npm install jshint -g

CMD ["make"]
