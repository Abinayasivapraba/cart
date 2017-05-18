package com.niit.shopcart.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.niit.shopcart.dao.ProductDAO;
import com.niit.shopcart.dao.UserDAO;
import com.niit.shopcart.model.ProductModel;
import com.niit.shopcart.model.User;

@Controller
public class UserController {
	
	
	
	private static final Logger log = LoggerFactory.getLogger(UserController.class);
	
	
	private String logid;
	private String regid;
	public String getLogid() {
		return logid;
	}
	
	
	
	@Autowired
	User user;
	@Autowired
	private UserDAO userDAO;
	@Autowired
	private HttpSession session;
	@Autowired
	private ProductDAO productDAO;
	@Autowired
	ProductModel productModel;
	
	
	/*@RequestMapping("/validatelogin")
	public ModelAndView showLoginPage()
	{
		//Which Page To Navigate
		ModelAndView mv = new ModelAndView("/Login");
		mv.addObject("isUserClickedLogin", "true");
		return mv;
	}*/
	
	
	
	@Transactional
	@RequestMapping(value="/validatelogin",method=RequestMethod.POST)
	public ModelAndView validation(HttpServletRequest request,@ModelAttribute User user, @RequestParam("id") String id,@RequestParam("password")String password)
	{
		ModelAndView mv;
		 user = userDAO.validateLoginCredentials(id, password);                                                            //validateLoginCredentials(uid, psw);
		if(user==null)
		{
			mv = new ModelAndView("/Home","command",new User());
			mv.addObject("Wrong", "Wrong Credentials");
		}
		else
		{
			if(user.getRole().equals("Role_Admin"))
			{
				session.setAttribute("showAdmin", true);
			}
			mv = new ModelAndView("forward:/Home","command",new User());
			
			logid=id;
			//mv.addObject("compareT", "Validation Success");
			session.setAttribute("LogList", "true");
			session.setAttribute("UID", "Welcome:" +id);
			session.setAttribute("SUCC","Welcome:" +id);
		}
		
		
		return mv;
	}
	
	
	
	@Transactional
	@RequestMapping(value="/validateregister",method=RequestMethod.POST)
	public ModelAndView validationlogin(@ModelAttribute User user,@RequestParam("password")String psw,@RequestParam("id") String uid,@RequestParam("fname") String fname,@RequestParam("lname")String lname,@RequestParam("email") String mail,@RequestParam("confirmpassword")String cpsw)
	{
		String compareEmail = "^[\\w-_\\.+]*[\\w-_\\.]\\@([\\w]+\\.)+[\\w]+[\\w]$";
		boolean b = mail.matches(compareEmail);
		String patternPSW = "(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}";
		boolean b1 = psw.matches(patternPSW);
		boolean b2 = psw.equals(cpsw);
		System.out.println(b2);
		ModelAndView mv = new ModelAndView("/ValidateRegister","command",new User());
		mv.addObject("FNAME", fname);
		mv.addObject("LNAME", lname);
		if(uid=="")
		{
			log.debug("In UserId comparision");
			mv.addObject("RUID","User Name Not Entered");
		}
		if(psw=="")
		{
			log.debug("In password confirmation");
			mv.addObject("RPSW","Password Not Entered");
		}
		if(cpsw=="")
		{
			log.debug("In Confirm password ");
			mv.addObject("RCPSW","Confirm Password Not Entered");
		}
		if(mail=="")
		{
			System.out.println("In Mail Entry");
			mv.addObject("RMAIL","Email Not Entered");
		}
		if(fname=="")
		{
			System.out.println("In FirstName Entry");
			mv.addObject("RFNAME","First Name Not Entered");
		}
		if(lname=="")
		{
			log.debug("In LastName Entry");
			mv.addObject("RLNAME","Last Name Not Entered");
		}
		if(fname.equals(uid))
		{
			log.debug("In FirstName equals");
			mv.addObject("compareUF", "First Name & User Name Must Not Be Same");
		}
		if(b2!=true)
		{
			log.debug("In Password comparision");
			mv.addObject("compareP", "Password & Confirm Password Must Be Same");
		}
		if(b1!=true)
		{
			log.debug("In Password Length Comparision");
			mv.addObject("comparePSW", "Password Must Be Greater Than 8 Characters.It Should Conatin One Symbol One Capital Letter One Small Letter One Number and No Space");
		}
		if(b!=true)
		{
			log.debug("In Email comparision");
			mv.addObject("compareE", "Email Is Not Properly Entered Make Sure (@) & (.) is used Example : example@abc.com");
		}
		else
		{
			log.debug("In Else");
			mv.addObject("success", "Hi " );
			user.setRole("Role_User");
			userDAO.save(user);
			//List<User> userList = fetchUserList();
			//mv.addObject("successList", userList);
			regid=uid;
			user = userDAO.getUserById(regid);
			mv.addObject("L", user);
			session.removeAttribute("updateUser");
			session.setAttribute("SUCC","Welcome :" + fname + " " + lname);
			session.setAttribute("UID", "Done");
			session.setAttribute("RegList", "true");
		}
		return mv;
	}

	public List<User> fetchUserList()
	{
		List<User> list = new ArrayList<User>(userDAO.getAllUser());
		System.out.println(list.get(0));
		return list;
	}
	
	@RequestMapping("/Logout")
	public ModelAndView Logout()
	{
		ModelAndView mv = new ModelAndView("/Home");
		session.removeAttribute("UID");
		session.removeAttribute("SUCC");
		session.removeAttribute("showAdmin");
		session.removeAttribute("LogList");
		session.removeAttribute("RegList");
		return mv;
	}
	@Transactional
	@RequestMapping("/ProductView")
	public ModelAndView viewProduct(Map<String, Object> map)
	{
		log.debug("Start of method AddToCart");
		String path="D:\\Users\\Abinaya\\workspace\\cart\\src\\main\\webapp\\resources\\images\\";
		List<ProductModel> prodList=productDAO.getAllProductModel();
		map.put("prList", prodList );
		map.put("path", path);
		ModelAndView mv=new ModelAndView("/ProductView",map);
		log.debug("End of method AddToCart");
		return mv;
	}


	}
