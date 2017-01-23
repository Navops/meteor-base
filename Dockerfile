FROM node:6-slim

RUN apt-get update && apt-get install -y curl python build-essential build-essential git openjdk-7-jdk unzip && apt-get clean

RUN curl -sL https://install.meteor.com | /bin/sh
RUN npm install -g chimp@0.35.0 phantomjs-prebuilt

USER node
VOLUME /app
WORKDIR /app
EXPOSE 3000
CMD [ "meteor", "run", "--allow-superuser"]
