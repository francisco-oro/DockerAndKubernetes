FROM node:latest
LABEL authors="franciscooro"

WORKDIR /backend
COPY ./package.json .

RUN npm install

COPY . .

EXPOSE 80

CMD ["npm", "start"]