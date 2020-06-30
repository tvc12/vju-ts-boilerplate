
FROM node:12

WORKDIR /app

COPY package.json /app
COPY yarn.lock /app

RUN yarn

COPY . /app

ENV NODE_ENV=production

RUN yarn build

EXPOSE 5000

CMD ["yarn", "start"]
