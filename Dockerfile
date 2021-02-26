FROM node
LABEL maintainer="Joffrey Benoist"

WORKDIR /app

COPY /angular-project/package.json /app
COPY /angular-project/package-lock.json /app

RUN npm cache clear --force
RUN npm install -g npm@7.5.6
RUN npm install -g @angular/cli
RUN npm install

ENV PATH /app/node_modules/.bin:$PATH

COPY angular-project/ /app

EXPOSE 4200

CMD ng serve --host 0.0.0.0


