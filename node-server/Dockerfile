FROM node:latest

# This is optional good for debugging
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim"]

# Any subsequent instructions in our docker file will 
# start from this app directory
WORKDIR /app

# Every instruction in this file is considered as a layer
# in order to keep things efficient docker will attempt 
# to cache layers if nothing is actually changed

# Normally when you're working on a node project you get 
# your source code and then you install your dependencies but in
# docker we actually want to install our dependencies first
# so they can be cached. In other words, we don't want to have 
# to reinstall all of our node modules every time we change our 
# a source code.

# COPY takes two arguments, 
# the first is local package.json file location
# the second one, is the place we want to copy it in the 
# container which is the current working directory
COPY package*.json ./

RUN npm install

# We want to copy all our source code
# but we don't want to copy node_modules folder
# so, we add the `.dockerignore` file with 
# `node_modules` line there.
COPY . . 

ENV PORT=8080

EXPOSE 8080

CMD ["npm", "start"]
