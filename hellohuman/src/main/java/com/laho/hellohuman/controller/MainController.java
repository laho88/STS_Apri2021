package com.laho.hellohuman.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller()
public class MainController {

	@RequestMapping("")
	public String userGreeting(@RequestParam(value="firstName", defaultValue= "Human") String firstName, @RequestParam (value="lastName", defaultValue = "", required=false) String lastName, Model model) {
		System.out.printf("this is userGreeting() value= %s %s", firstName, lastName);
		model.addAttribute("firstName", firstName);
		model.addAttribute("lastName", lastName);
	return "greeting.jsp";
	}
}	




//@RequestMapping("")
//public String userGreeting(@RequestParam(value="firstName", defaultValue= "Human") String firstName, @RequestParam (value="lastName", defaultValue = "", required=false) String lastName) {
//	System.out.printf("this is userGreeting() value= %s %s", firstName, lastName);
//	return String.format("Hello "+firstName+" "+lastName);
//
//}	

// http://localhost:8080/?firstName=Smees&lastName=noisesdasdbg
//  Renders: Hello Smees noisesdasdbg	
	

