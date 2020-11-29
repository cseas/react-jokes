# Stage 1: Build
FROM node:14-alpine AS builder
LABEL maintainer="Abhijeet Singh"\
 website="https://github.com/cseas"

RUN mkdir -p /home/node/app &&\
 chmod -R 775 /home/node/app &&\
 chown -R node:node /home/node/app
WORKDIR /home/node/app

COPY package*.json /home/node/app/
USER 1000
RUN sed -i '/\"homepage\"/d; /^$/d' package.json &&\
 npm install

COPY --chown=node:node . /home/node/app
# RUN npm run build
EXPOSE 3000
CMD ["npm", "start"]

# Stage 2: Production Environment
# FROM nginx:alpine
# COPY --from=builder /usr/src/app/build /usr/share/nginx/html
# EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"]
