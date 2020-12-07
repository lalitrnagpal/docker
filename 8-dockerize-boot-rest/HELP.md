# Getting Started

### Guides

    mvn clean install

    mvnw spring-boot:build-image -Dspring-boot.build-image.imageName=<docker-id>/dockerize-boot-rest

OR

    docker build --build-arg JAR_FILE=target/*.jar -t <docker-id>/dockerize-boot-rest .

    docker run -it -p 9000:9000 lalitrnagpal/dockerize-boot-rest
