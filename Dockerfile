###########################################
# Dockerfile to test alpine 
###########################################

# Set the base image to alpine
FROM alpine:latest

# Author / Maintainer
MAINTAINER secrbn

# Update repos
RUN apk update
RUN apk add git \
	nodejs \
	nodejs-npm \
	ffmpeg 
RUN git clone https://github.com/jrudess/mfc_cb.node.git
RUN cd mfc_cb.node && npm install
