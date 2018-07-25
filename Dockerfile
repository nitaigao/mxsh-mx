FROM node:10.6.0-alpine

WORKDIR /app
EXPOSE 25

ENV NODE_ENV production

COPY package.json package-lock.json /app/
RUN npm install

COPY . /app

ENTRYPOINT npm start