FROM openjdk:8-jdk-alpine
EXPOSE 9000
ADD target/*.jar hello-world-rest-api-docker.jar
ENTRYPOINT ["sh", "-c", "java -jar /hello-world-rest-api-dock r.jar"]