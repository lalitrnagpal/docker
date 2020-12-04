# Specify a base image
#FROM alpine
# Lets use the base image with Node JS installed instead of above
FROM node:alpine

# Copy the files to the container
WORKDIR /app

# [ COPY ./ /app

# Install some depenendencies
# RUN npm install ]

# Changing the COPY operation ( Square bracket nested one ) above to a two step process now
# STEP 1
COPY ./package.json /app
RUN npm install

# STEP 2
COPY ./ /app

# Default command
CMD ["npm", "start"]