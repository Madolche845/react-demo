# base image
FROM node:alpine

WORKDIR /app

COPY package.json ./

COPY package-lock.json ./

RUN npm install

EXPOSE 3000

COPY . ./

CMD ["npm", "start"]
