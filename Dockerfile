FROM node:latest
MAINTAINER Rupesh Papneja<rupesh.papneja@gmail.com>
ARG PORT_NO=8000
RUN mkdir -p /latitude/apps
WORKDIR /latitude/apps/
RUN git clone https://github.com/rupesh-papneja/node-typescript-server.git
WORKDIR /latitude/apps/node-typescript-server
RUN npm install typings typescript --global --save
RUN npm install @types/node --save
RUN typings install dt~node --save --global
RUN npm install
RUN tsc
EXPOSE $PORT_NO
CMD export PORT=$PORT_NO && npm start
