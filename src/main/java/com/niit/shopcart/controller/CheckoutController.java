package com.niit.shopcart.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadLocalRandom;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopcart.dao.CartDAO;
import com.niit.shopcart.dao.CheckoutDAO;
import com.niit.shopcart.model.Checkout;
import com.niit.shopcart.model.MyCart;
import com.niit.shopcart.model.ProductModel;
@Controller
public class CheckoutController {
	@Autowired
	Checkout checkout;
	@Autowired
	CheckoutDAO checkoutDAO;
	@Autowired
	UserController userController;
	@Autowired
	MyCart myCart;
	@Autowired
	CartDAO cartDAO;
	@Transactional
	public List<Checkout> showlist()
	{
		String id= userController.getLogid();

		List<Checkout> list= new ArrayList<Checkout>();
		list.addAll(checkoutDAO.getlist(id));
		return list;
	}

	@Transactional
	@RequestMapping("/Checkout")
	public ModelAndView gocheckout()
	{
		
		String id= userController.getLogid();
		checkout.setId(id);

		String idresult=checkoutDAO.checktableforempty(id);
		if(idresult=="0")
		{
			ModelAndView mv1= new ModelAndView("/Checkout","command", new Checkout());
			return mv1;
		}
		else
		{
			ModelAndView mv=new ModelAndView("/CheckoutDetails","command",new Checkout());
			List<Checkout> list=showlist();
			mv.addObject("printdetails", list);
			return mv;
			
		}
			
		
	}
	@Transactional
	@RequestMapping(value="/finalcheckout",method=RequestMethod.POST)
	public ModelAndView gotoaddcheckout(@ModelAttribute Checkout checkout)
	{
		String id= userController.getLogid();
		checkout.setId(id);
		checkout.setCid(ThreadLocalRandom.current().nextInt(100, 1000000 + 1));
		checkoutDAO.Save(checkout);
		ModelAndView mv=new ModelAndView("/CheckoutDetails","command",new Checkout());
		List<Checkout> list=showlist();
		mv.addObject("printdetails", list);
		return mv;
	}

	@Transactional
	@RequestMapping("/generatebill")
	public ModelAndView generatebill()
	{
		String id= userController.getLogid();
		boolean b=checkoutDAO.execute(id);
		List<MyCart>list=checkoutDAO.getAllCartDetails(id);
		List<Checkout> list1=checkoutDAO.getlist(id);
		ModelAndView mv= new ModelAndView("/GenerateBillDetails");
		
		mv.addObject("cartdetails",list);
		mv.addObject("checkoutdetails", list1);
		double total=checkoutDAO.gettotal(id);
		mv.addObject("checkouttotal", total);
		
		return mv;
	}
	@RequestMapping("/Finish")
	public ModelAndView showHomePage()
	{
		//Which Page To Navigate
		ModelAndView mv = new ModelAndView("/CompleteCart");
		//Data To Carry Home Page
		//mv.addObject("msg", "Happy");
		return mv;
	}




}
