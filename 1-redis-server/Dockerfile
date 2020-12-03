# Specify a base image
FROM alpine

# Download and install a dependency
RUN apk add --update gcc

RUN apk add --update redis

# What should the image do when it starts as a Container
CMD ["redis-server"]