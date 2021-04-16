package com.laho.routingpractice.codingcontroller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/coding")
public class CodingController {
	
	@RequestMapping("")
	public String greetDojo() {
		return "Hello Coding Dojo. This is GET req 1.";
	}
	
	@RequestMapping("/python")
	public String pythonDjangoShoutout() {
		return "Python and Django were fun.";
	}
	
	@RequestMapping("/java")
	public String j() {
		return "Java and Spring is more fun though!";
	}

}
