FROM node:15.5-alpine

WORKDIR /usr/src/app
COPY package*.json yarn.lock ./
RUN yarn cache clean && yarn --update-checksums
COPY . .
EXPOSE 3000
CMD ["yarn", "start"]