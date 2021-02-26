FROM node:lts-alpine

MAINTAINER Joffrey Benoist

RUN npm install -g npm@7.5.6

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY ./angular-project/package.json ./
COPY ./angular-project/package-lock.json ./

RUN npm install -g @angular/cli
RUN npm install

COPY angular-project/ ./

EXPOSE 4200 

CMD ng serve --host 0.0.0.0


