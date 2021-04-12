package com.laho.strings;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class StringsApplication {

	public static void main(String[] args) {
		SpringApplication.run(StringsApplication.class, args);
	}
	
	@RequestMapping("/")
	public String greeting() {
		return "Hello, this day is going well so far. Let it always remain as such.";
	}

	@RequestMapping("/random")
	public String randomMessage() {
		return "This is another random message for you to view!";
	}
}
