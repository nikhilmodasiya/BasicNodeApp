# Base image
FROM node:10.15.0
#FROM node:10.15.0-alpine

# Creating a directory inside the base image and defining as the base directory
WORKDIR /BasicNodeApp
 
# Copying the files of the root directory into the base directory
ADD . /BasicNodeApp
 

RUN npm install 

CMD  node server/server.js &&  tail -f /dev/null

# Exposing the RestAPI port
EXPOSE 3000
