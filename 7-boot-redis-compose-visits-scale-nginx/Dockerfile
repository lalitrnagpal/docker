FROM openjdk:14-ea-alpine3.10

WORKDIR /code

# Install Stage
RUN apk update

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 9000:9000
ENTRYPOINT ["java","-jar","app.jar"]