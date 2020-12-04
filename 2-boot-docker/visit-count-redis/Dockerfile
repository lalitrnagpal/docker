FROM openjdk:14-ea-alpine3.10

# Install Stage
RUN apk update

ARG JAR_FILE=target/visit-count-redis-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
EXPOSE 9000:9000
ENTRYPOINT ["java","-jar","app.jar"]