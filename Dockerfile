FROM node:4-slim

RUN apt-get update && apt-get install -y curl python build-essential unzip
RUN curl -sL https://install.meteor.com | /bin/sh

VOLUME /app
WORKDIR /app
EXPOSE 3000
CMD [ "meteor" ]
