FROM node:14-alpine
MAINTAINER Abhijeet Singh https://github.com/cseas

RUN mkdir -p /src/app
WORKDIR /src/app

COPY package.json /src/app/package.json
RUN npm i

COPY . /src/app
EXPOSE 3000
CMD ["npm", "start"]
