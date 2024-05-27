FROM node:latest
LABEL authors="Francisco Oro"

WORKDIR /app

COPY ./package.json .

RUN npm install

COPY . .

EXPOSE 80

CMD ["node", "server.js"]
