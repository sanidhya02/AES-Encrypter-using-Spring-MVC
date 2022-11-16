package assignment.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	@ModelAttribute
	public void commonDataForModel(Model m)
	{
		m.addAttribute("Header","EncryptBuddy");
		m.addAttribute("Desc", "First Login form");
	}

	@RequestMapping("/")
	public String home()
	{
		
		return "index";
	}
	@RequestMapping(path = "/route", method = RequestMethod.POST)
	public String change()
	{
		
		return "contact";
	}
	@RequestMapping(path = "/back", method = RequestMethod.POST)
	public String back()
	{
		
		return "contact";
	}
	
}
