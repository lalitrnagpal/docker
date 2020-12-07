#FROM openjdk:11-jdk-alpine
FROM adoptopenjdk/openjdk11
RUN groupadd -r spring && useradd -r spring -g spring
USER spring:spring
ARG JAR_FILE=target/*.jar
EXPOSE 9000:9000
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]