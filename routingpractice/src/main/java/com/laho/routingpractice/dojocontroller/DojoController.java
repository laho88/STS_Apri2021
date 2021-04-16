package com.laho.routingpractice.dojocontroller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/{dojo-name}")
public class DojoController {

	@GetMapping("dojo")
	public String pathDojo(@PathVariable("dojo") String dojo) {	
//		return String.format("the %s is awesome" + dojo);
		String msg = "The "+dojo+" is awesome!";
		return msg;
	}
	
	@GetMapping("burbank-dojo")
	public String pathBurbs(@PathVariable("burbank-dojo")String burbank) {	
		return burbank +" is located in Southern California";
	}

	@RequestMapping("san-jose")
	public String pathSanj(@PathVariable("san-jose") String sanJ) {	
		return "San Jose is the headquarters";
	}

	
}

//Spent way too much time getting hung up on this assignment. Just submitting what I have here so I can move ahead. Cheers.

