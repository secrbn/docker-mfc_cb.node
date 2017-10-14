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

VOLUME /capturing /captured

COPY ["start-mfc_cb.node.sh","config.yml","/mfc_cb.node/"]

ENTRYPOINT ["/bin/ash","/mfc_cb.node/start-mfc_cb.node.sh"]
