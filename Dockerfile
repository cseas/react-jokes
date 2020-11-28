# Stage 1: Build
FROM node:14-alpine AS builder
LABEL maintainer="Abhijeet Singh" \
      website="https://github.com/cseas"

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
# ENV PATH /usr/src/app/node_modules/.bin:$PATH

COPY package.json /usr/src/app/package.json
RUN sed -i '/\"homepage\"/d; /^$/d' package.json
RUN npm i

COPY . /usr/src/app
# RUN npm run build
EXPOSE 3000
CMD ["npm", "start"]
USER node

# Stage 2: Production Environment
# FROM nginx:alpine
# COPY --from=builder /usr/src/app/build /usr/share/nginx/html
# EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"]
