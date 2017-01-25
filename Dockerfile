FROM node:6-slim

RUN echo $'\n54.192.225.217 warehouse.meteor.com\n' >> /etc/hosts

RUN apt-get update && apt-get install -y curl python build-essential build-essential git openjdk-7-jdk unzip && apt-get clean
RUN npm install -g chimp@0.35.0 phantomjs-prebuilt

USER node
VOLUME /app
WORKDIR /app
RUN curl -sL https://install.meteor.com | /bin/sh

ENV PATH /home/node/.meteor:$PATH
EXPOSE 3000
CMD [ "meteor", "run"]
