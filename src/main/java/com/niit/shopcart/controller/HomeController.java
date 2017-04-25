package com.niit.shopcart.controller;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
//import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopcart.dao.UserDAO;
import com.niit.shopcart.model.User;
@Controller
public class HomeController {
	//http://localhost:8080/shopcart/
	
	
	private static final Logger log = LoggerFactory.getLogger(HomeController.class);
	
	
	@Autowired
	private HttpSession session;
	@Autowired
	UserDAO userDAO;
	@Autowired
	User user;
	@Autowired
	UserController userController;
	
	
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
		ModelAndView mv = new ModelAndView("/Login","command",new User());
		return mv;
	}
	@RequestMapping("/Register")
	public ModelAndView showRegisterPage()
	{
		ModelAndView mv = new ModelAndView("/Register","command",new User());
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


@RequestMapping(value = "/editUser", method = RequestMethod.GET)
@Transactional
public ModelAndView showEditProduct(@RequestParam("editrow")String id,@ModelAttribute User user)
{
	user=userDAO.getUserById(id);
	log.debug("In Mv Before Update");
	ModelAndView mv = new ModelAndView("/ValRegister","command", new User());
	List<User> userList = userController.fetchUserList();
	user = userDAO.getUserById(id);
	mv.addObject("successList",userList);
	mv.addObject("L", user);
	mv.addObject("UID", id);
	mv.addObject("FNAME", user.getFname());
	mv.addObject("LNAME", user.getLname());
	mv.addObject("UMAIL", user.getEmail());
	mv.addObject("PASS", user.getPassword());
	mv.addObject("CPASS", user.getConfirmpassword());
	session.setAttribute("updateUser", "updated");
	session.removeAttribute("addUser");
	return mv;
}















	}

	
	
	

	
	
	

