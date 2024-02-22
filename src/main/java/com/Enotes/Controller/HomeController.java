package com.Enotes.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.Enotes.Dao.UserDao;
import com.Enotes.Entity.User;



@Controller
public class HomeController {
	
	@Autowired
	private UserDao userDao;
	
	@RequestMapping("/home")
	public String home()
	{
		return "home";
	}
	
	@RequestMapping("/login")
	public String login()
	{
		return "login";
	}
	
	@RequestMapping("/register")
	public String register()
	{
		return "register";
	}
	
	/*
	 * @RequestMapping("/addnotes") public String addPage() { return "add_notes"; }
	 * 
	 * @RequestMapping("/viewnotes") public String viewPage() { return "view_notes";
	 * }
	 * 
	 * 
	 * @RequestMapping("edit_notes") public String editnotes() {
	 * 
	 * return "edit_notes"; }
	 */
	
	@RequestMapping("/deletenotes")
	public String deletenotes()
	{
		
		return "delete_notes";
	}
	
	@RequestMapping(path="/registeruser",method=RequestMethod.POST)
	public String registerUser(@ModelAttribute User user,HttpSession session)
	{
		System.out.println(user);
		userDao.saveUser(user);
		session.setAttribute("msg", "Registration Successfully.");
		return "redirect:/register";
	}
	
	@RequestMapping(path="/loginuser", method=RequestMethod.POST)
	public String loginuser(@RequestParam("email") String email, @RequestParam("password") String password, HttpSession session)
	{
		User user = userDao.login(email, password);
		if(user!=null)
		{
			session.setAttribute("user", user);
			return "redirect:/home";
		}
		else
		{
			session.setAttribute("msg", "Email or Password is Invalid");
			return"redirect:/login";
		}
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session)
	{
		session.removeAttribute("user");
		session.setAttribute("msg", "Logout Successfully");
		return "login";
	}
}
