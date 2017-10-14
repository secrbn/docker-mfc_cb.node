###########################################
# Dockerfile to create a container to run
# jrudess/mfc_cb.node recorder in an 
# alpine container
###########################################

# Set the base image to alpine
FROM alpine:latest

# Author / Maintainer
MAINTAINER secrbn

# install packages
RUN apk update && \
apk add git \
    nodejs \
    nodejs-npm \
    ffmpeg  && \
rm -rf /var/cache/apk/* && \
git clone https://github.com/jrudess/mfc_cb.node.git && \
cd mfc_cb.node && \\
npm install

VOLUME /config /capturing /captured

ENTRYPOINT ["node /mfc_cb.node/main.js"]
