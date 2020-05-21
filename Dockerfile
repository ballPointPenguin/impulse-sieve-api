FROM node:14-alpine
LABEL maintainer "Benjamin Rosas <ben@aliencyb.org>"

ENV NODE_ENV production
EXPOSE 1337
WORKDIR /app

RUN apk add --no-cache --virtual .build \
  g++ git make python

COPY package*.json /app/
RUN npm ci --silent

RUN apk del .build

COPY . .

RUN npm run build

CMD ["npm", "start"]
