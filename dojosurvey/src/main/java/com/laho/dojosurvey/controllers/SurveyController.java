package com.laho.dojosurvey.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller()
public class SurveyController {

	
	@RequestMapping("")
	public String index() {
		System.out.println("This is index.");
		return "index.jsp";
	}
	
	@PostMapping("/submit")
	public String survey(
			@RequestParam(value="username") String myName, 
			@RequestParam(value="dojoLocale") String dojoName, 
			@RequestParam(value="langList") String language,
			@RequestParam(value="comment", required=false) String comment,
			HttpSession sesh) {
		
		System.out.println(myName);
		System.out.println(dojoName);
		System.out.println(language);
		System.out.println(comment);
		
		sesh.setAttribute("myName", myName);
		sesh.setAttribute("dojoName", dojoName);
		sesh.setAttribute("language", language);
		sesh.setAttribute("comment", comment);
		return "redirect:/result";
	}
	
	@RequestMapping("/result")
	public String result(HttpSession sesh) {
		String myName = (String) sesh.getAttribute("myName");
		String dojoName = (String) sesh.getAttribute("dojoName");
		String language = (String) sesh.getAttribute("language");
		String comment = (String) sesh.getAttribute("comment");
		return "result.jsp";
	}
}


//https://login.codingdojo.com/m/59/5655/37451
//Use @RequestParams to grab form data
//Do any manipulations with the data and then set to session:
// HttpSession session - session.getAttribute()
// Redirect tp the render pg.