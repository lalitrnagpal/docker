# Hello World Rest API

### Building an Image

1. Build a Jar - /target/hello-world-rest-api.jar
2. Setup the Prerequisites for Running the JAR - openjdk:8-jdk-alpine
3. Copy the jar
4. Run the jar

### Docker Commands - Creating Image Manually

- docker run -dit openjdk:8-jdk-alpine
- docker container ls
- docker container exec suspicious_napier ls /tmp
- docker container cp target/hello-world-rest-api.jar suspicious_napier:/tmp
- docker container exec suspicious_napier ls /tmp
- docker container commit suspicious_napier lalitrnagpal/hello-world-rest-api:manual1
- docker run lalitrnagpal/hello-world-rest-api:manual1
- docker container ls
- docker container commit --change="CMD [\"java\",\"-jar\",\"/tmp/hello-world-rest-api.jar\"]" suspicious_napier lalitrnagpal/hello-world-rest-api:manual2
- docker run -p 8080:8080 lalitrnagpal/hello-world-rest-api:manual2


### Running the Application

Run com.boot.rest.RestfulWebServicesApplication as a Java Application.

- http://localhost:8080/hello-world

```txt
Hello World
```

- http://localhost:8080/hello-world-bean

```json
{"message":"Hello World"}
```

- http://localhost:8080/hello-world/path-variable/lalit

```json
{"message":"Hello World, lalit"}
```

