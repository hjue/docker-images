FROM node:13-slim
MAINTAINER Jue Hao <haojue@gmail.com>

RUN \
    npm install yarn -g \
    yarn global add nrm && \
    nrm use taobao &&\
    yarn global add vue-cli &&\
    yarn global add cross-env

VOLUME /app

EXPOSE 3000

WORKDIR /app