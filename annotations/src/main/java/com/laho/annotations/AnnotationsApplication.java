package com.laho.annotations;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class AnnotationsApplication {

	public static void main(String[] args) {
		SpringApplication.run(AnnotationsApplication.class, args);
	}
	
	@RequestMapping("")
	public String index() {
		return "Hello Everybody.";
	}

}
