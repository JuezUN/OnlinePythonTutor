FROM node:6.11.5

WORKDIR /home

COPY . .

RUN make deps

EXPOSE 3000

RUN npm install forever

RUN npm install jshint -g

CMD ["make"]
