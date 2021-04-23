package com.laho.formatdate.maincontroller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("")
public class MainController {
	
	//Date date = new Date();

	@RequestMapping("/")
	public String dashboard(Model model) {
		Date date = new Date();
		model.addAttribute("date", date);
		return "dashboard.jsp";
	}
	
	@RequestMapping("/date")
	public String dateTemplate(Model model) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		String formattedDate = dateFormat.format(new Date());
		//System.out.println(date);
		model.addAttribute("date", formattedDate);
		return "date.jsp";
	}
	@RequestMapping("/time")
	public String time(Model model){
	    Date date = new Date();  
	    SimpleDateFormat formatter = new SimpleDateFormat("hh:mm a");
		model.addAttribute("time",formatter.format(date));
		return "timeTemplate.jsp";
	}
}
