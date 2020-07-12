FROM node:latest

RUN mkdir /app

ADD . /app

WORKDIR /app

RUN cd /app && \
    npm install webpack webpack-dev-server html-webpack-plugin -D && \
    npm install webpack-cli -D && \
    npm install babel-core babel-loader babel-preset-env --save-dev && \
    npm install raw-loader --save-dev
