package com.niit.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.service.CategoryService;

@Controller
public class HomeController {
	@Autowired
	private CategoryService categoryService;
	
	
@RequestMapping ("/home")
public String homePage(HttpSession session)
	{
	session.setAttribute("categories", categoryService.getAllCategories());
	 return "home";
	}
@RequestMapping("/aboutus")	
public String aboutUs()
{
	return "aboutus";
}
@RequestMapping("/login")
public String login(@RequestParam(value="error",required=false) String error,
		@RequestParam(value="logout",required=false) String logout,Model model){
	if(error!=null)
		model.addAttribute("error","Invalid Username and Password.. Please enter valid username and password");
	if(logout!=null)
		model.addAttribute("logout","Loggedout successfully");
	return "login";
	
}

@RequestMapping("/contact")
public String contact()
{
return "contact";	
}

@RequestMapping("/privacy")
public String privacy()
{
return "privacy";	
}
@RequestMapping("/term")
public String term()
{
return "term";	
}

}


