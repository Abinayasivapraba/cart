package com.niit.shopcart.controller;
import javax.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class HomeController {
	//http://localhost:8080/shopcart/
	@Autowired
	private HttpSession session;
	
	
	@RequestMapping("/")
	public ModelAndView showHomePage()
	{
		//Which Page To Navigate
		ModelAndView mv = new ModelAndView("/Home");
		//Data To Carry Home Page
		mv.addObject("msg", "Happy");
		return mv;
	}
	@RequestMapping("/Home")
	public ModelAndView showHome()
	{
		//Which Page To Navigate
		ModelAndView mv = new ModelAndView("/Home");
		mv.addObject("msg","WELCOME TO SHOPPING CART");
		return mv;
	}
	
	
	@RequestMapping("/Login")
	public ModelAndView showLoginPage()
	{
		//Which Page To Navigate
		ModelAndView mv = new ModelAndView("/Login");
		mv.addObject("isUserClickedLogin", "true");
		return mv;
	}
	
	
	
	
	@RequestMapping("/validateLogin")
	public ModelAndView validateLoginPage(@RequestParam("id") String uid,@RequestParam("key")String psw)
	{
		ModelAndView mv = new ModelAndView("/Login");
		if(uid.equals("NIIT") && psw.equals("NIIT"))
		{
			mv.addObject("compareT", "Validation Success");
			session.setAttribute("UID", "Welcome:" +uid);
		}
		else
		{
			mv.addObject("compareF", "Wrong Credentials");
		}
		return mv;
	}
	
	@RequestMapping("/Logout")
	public ModelAndView logout()
	{
		ModelAndView mv = new ModelAndView("/Login");
		session.removeAttribute("UID");
		return mv;
	}
	@RequestMapping("/Register")
	public ModelAndView showRegisterPage()
	{
		//Which Page To Navigate
		ModelAndView mv = new ModelAndView("/Register");
		mv.addObject("isUserClickedRegister", "true");
		return mv;
	}
	@RequestMapping("/validateRegister")
	public ModelAndView validateRegisterPage(@RequestParam("fname") String fname,@RequestParam("lname") String lname,@RequestParam("email")String email,@RequestParam("rkey")String rkey,@RequestParam("ckey")String ckey)
	{
		ModelAndView mv = new ModelAndView("/Register");
		if(fname=="")
		{
			mv.addObject("fname", "first name not entered");
		}
		if(lname=="")
		{
			mv.addObject("lname", "last name not entered");
		}
		
		
	
		if(email=="")
		{
			mv.addObject("mail", " mail not entered");
		}
		if(rkey=="")
		{
			mv.addObject("psw", "password  not entered");
		}
		if(ckey=="")
		{
			mv.addObject("cpsw", "confirm password not entered");
		}
		return mv;
	}
	
	@RequestMapping("/Aboutus")
		public ModelAndView showAboutusPage()
		{
			//Which Page To Navigate
			ModelAndView mv = new ModelAndView("/Aboutus");
			mv.addObject("isUserClickedAboutus", "true");
			return mv;
		}
	@RequestMapping("/Contactus") 
	
	public ModelAndView showContactusPage()
	{
		//Which Page To Navigate
		ModelAndView mv = new ModelAndView("/Contactus");
		mv.addObject("isUserClickedContactus", "true");
		return mv;
	}
@RequestMapping("/admin") 
	
	public ModelAndView showAdminPage()
	{
		//Which Page To Navigate
		ModelAndView mv = new ModelAndView("/admin");
		mv.addObject("isUserClickedAdmin", "true");
		return mv;
	}
	}

	
	
	

	
	
	

