FROM node:latest
MAINTAINER Rupesh Papneja<rupesh.papneja@gmail.com>
ARG PORT_NO=8000
RUN mkdir -p /latitude/apps
RUN cd /latitude/apps
RUN export PORT=$PORT_NO
RUN git clone https://github.com/rupesh-papneja/node-typescript-server.git
RUN cd node-typescript-server
WORKDIR /latitude/apps/node-typescript-server
RUN npm install typings typescript --global --save
RUN npm install @types/node --save
RUN typings install dt~node --save --global
RUN npm install
RUN tsc
RUN npm start
EXPOSE $PORT_NO
CMD [ "npm", "start" ]