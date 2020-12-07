package com.example.spring.dockerize;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class DockerizeApplication {

	public static void main(String[] args) {
		SpringApplication.run(DockerizeApplication.class, args);
		System.out.println("Hello Dockerized Spring Boot!");
	}

}
