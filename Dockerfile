FROM node:latest
MAINTAINER Rupesh Papneja<rupesh.papneja@gmail.com>
RUN mkdir -p /latitude/apps
WORKDIR /latitude/apps/
RUN git clone https://github.com/rupesh-papneja/node-typescript-server.git
WORKDIR /latitude/apps/node-typescript-server
RUN npm install typings typescript --global --save
RUN npm install @types/node --save
RUN typings install dt~node --save --global
RUN npm install
RUN tsc
EXPOSE 8000
CMD export PORT=8000 && npm start
