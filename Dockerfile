FROM node:7.4.0-onbuild

EXPOSE 25

ENV NODE_ENV production

ENTRYPOINT npm start