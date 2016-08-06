FROM node:4.4.7-slim
# FROM debian:wheezy
MAINTAINER steffo.weber@gmail.com



ENV METEORD_DIR /opt/meteord
ENV BUNDLE_DIR /bundle/bundle
COPY scripts $METEORD_DIR

RUN bash $METEORD_DIR/init.sh
# RUN rm -rf $BUNDLE_DIR/programs/server/npm/node_modules/meteor/npm-bcrypt
RUN npm install bcrypt

EXPOSE 80
ENTRYPOINT bash $METEORD_DIR/run_app.sh
# WORKDIR $BUNDLE_DIR

#ENTRYPOINT node main.js
# ENTRYPOINT /bin/bash 
