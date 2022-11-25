# syntax=docker/dockerfile:1
FROM node:12-alpine
RUN apk add --no-cache python2 g++ make
WORKDIR /app
COPY apps/todo/source/base/app .
RUN yarn install --production
CMD ["node", "src/index.js"]

