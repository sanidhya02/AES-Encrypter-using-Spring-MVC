package assignment.controller;

import java.util.Base64;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import assignment.model.Plain;
import assignment.model.TripleDES;
import assignment.model.User;

@Controller
public class ContactController {
	
	public String name;
	public String mail;
	public String password;
	@ModelAttribute
	public void commonDataForModel(Model m)
	{
		m.addAttribute("Header","EncryptBuddy");
		m.addAttribute("Desc", "First Login form");
	}
	

	@RequestMapping("/contact")
	public String showForm(Model m) {
		return "contact";
	}
	@RequestMapping(path = "processform", method = RequestMethod.POST)
	public String handleForm(@ModelAttribute User user,Model model) {

		if(user.getEmail().equalsIgnoreCase("sanidhya@mail.com") && user.getPassword().equalsIgnoreCase("admin"))
		{
			name=user.getUserName();
		     mail=user.getEmail();
		     
		     model.addAttribute("name",name);
		     model.addAttribute("email",mail);
//				System.out.println(name);
				


				return "Selection";
		}
		else {
			return "error";
		}
     
	}
	@RequestMapping(path = "advanced", method = RequestMethod.POST)
	public String display(Model m) {
		return "success";
	}
	@RequestMapping(path = "triple", method = RequestMethod.POST)
	public String show(Model m) {
		return "DES";
	}
	@RequestMapping(path = "decoder", method = RequestMethod.POST)
	public String dikhao(Model m) {
		return "Base";
	}
	@ModelAttribute
	public void commonNmae(Model m)
	{
//		User n= new User();
		m.addAttribute("name",name);
		 m.addAttribute("email",mail);

	}
	@RequestMapping(path = "modified", method = RequestMethod.POST)
	public String encryptForm(@ModelAttribute Plain plain,Model model) {

		assignment.model.AES obj= new assignment.model.AES();
		String tmp=obj.encrypt(plain.getText());
		model.addAttribute("tmp",tmp);
		
//		System.out.println(plain);
	
		return "success";
	}
	@RequestMapping(path = "demodified", method = RequestMethod.POST)
	public String decryptForm(@ModelAttribute Plain plain,Model model) {

		assignment.model.AES obj= new assignment.model.AES();
		String tmp=obj.decrypt(plain.getText());
		model.addAttribute("dmp",tmp);
		
//		System.out.println(plain);
	
		return "success";
	}
	@RequestMapping(path = "change", method = RequestMethod.POST)
	public String desEncrypt(@ModelAttribute Plain plain,Model model) {

		TripleDES obj= new TripleDES();
		String tmp=obj.encrypt(plain.getText());
		model.addAttribute("enc",tmp);
		
//		System.out.println(plain);
	
		return "DES";
	}
	@RequestMapping(path = "notchange", method = RequestMethod.POST)
	public String desDecrypt(@ModelAttribute Plain plain,Model model) {

		TripleDES obj= new TripleDES();
		String tmp=obj.decrypt(plain.getText());
		model.addAttribute("dnc",tmp);
		
//		System.out.println(plain);
	
		return "DES";
	}
	@RequestMapping(path = "basechange", method = RequestMethod.POST)
	public String baseEncrypt(@ModelAttribute Plain plain,Model model) {

		
		String originalInput=plain.getText();
	String tmp=	Base64.getEncoder().encodeToString(originalInput.getBytes());
		model.addAttribute("ben",tmp);
		
//		System.out.println(plain);
	
		return "Base";
	}
	@RequestMapping(path = "basenotchange", method = RequestMethod.POST)
	public String baseDecrypt(@ModelAttribute Plain plain,Model model) {

		String encodedString=plain.getText();
		byte[] decodedBytes = Base64.getDecoder().decode(encodedString);
		String tmp=new String(decodedBytes);
		model.addAttribute("bnc",tmp);
		
//		System.out.println(plain);
	
		return "Base";
	}
}
