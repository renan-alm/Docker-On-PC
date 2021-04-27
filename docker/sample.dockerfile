FROM node:latest
MAINTENER: ralmeida0
COPY . /var/www
RUN npm install
WORKDIR /var/www
ENTRYPOINT npm start
EXPOSE 3000
