FROM node:latest
LABEL authors="Francisco Oro"


WORKDIR /app

COPY ./package.json .

RUN npm install

COPY . .

ARG DEFAULT_PORT=80

ENV PORT $DEFAULT_PORT

EXPOSE $PORT

CMD ["npm", "start"]
