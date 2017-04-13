package com.niit.shopcart.controller;

import java.util.Date;
import java.util.concurrent.ThreadLocalRandom;

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

import com.niit.shopcart.dao.CartDAO;
import com.niit.shopcart.dao.ProductDAO;
import com.niit.shopcart.dao.impl.CartDAOImpl;
import com.niit.shopcart.dao.impl.ProductDAOImpl;
import com.niit.shopcart.model.MyCart;
import com.niit.shopcart.model.ProductModel;
import com.niit.shopcart.model.User;

@Controller
public class CartController {
	
	
	private static final Logger log = LoggerFactory.getLogger(CartController.class);
	
	
	@Autowired 
	private HttpSession session;
	@Autowired 
	private CartDAO cartDAO;

	@Autowired 
	private MyCart myCart;
	@Autowired
	private CartDAOImpl cartDAOImpl;

	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private ProductDAOImpl productDAOImpl;
	@Autowired
	private UserController userController;
	@Autowired
	private ProductModel productModel;
	

	
	@Transactional
	@RequestMapping(value="/MyCart",method=RequestMethod.GET)
	public ModelAndView showMyCart()
	{
		ModelAndView mv = new ModelAndView("/MyCart/MyCart");
		String uid = userController.getLogid();
		mv.addObject("displayMyCart", cartDAO.getAllCartDetails(uid));
		int total = cartDAO.getProductTotal(uid);
		System.out.println(total);
		mv.addObject("total", total);
		return mv;
	}
	
	@Transactional
	@RequestMapping(value="/validateaddCart",method=RequestMethod.GET)
	public ModelAndView validateAddToCart(@RequestParam("proName")String proName,@ModelAttribute MyCart myCart)
	{
		ModelAndView mv;
		String id = userController.getLogid();
		if(id==null)
		{
			mv = new ModelAndView("/validatelogin","command",new User());
			return mv;
		}
		else
		{
			mv = new ModelAndView("/MyCart");
			long d = System.currentTimeMillis();
			Date today = new Date(d);
			ProductModel productModel = productDAO.getproductModelByName(proName);
			myCart.setCartid(ThreadLocalRandom.current().nextInt(100,1000000+1));
			myCart.setStatus("N");
			myCart.setProQuan(1);
			myCart.setDateadded(today);
			myCart.setProName(proName);
			myCart.setProCost(productModel.getProCost());
			myCart.setId(id);
			myCart.setSum(cartDAO.getProductSum((int) myCart.getProCost(),myCart.getProQuan()));
			cartDAO.save( myCart);
			return mv;
		}
	}
	
	@Transactional
	@RequestMapping(value="increasequantity",method=RequestMethod.GET)
	public ModelAndView validateEditCartAdd(@RequestParam("id")int id,@ModelAttribute MyCart myCart)
	{
		ModelAndView mv = new ModelAndView("/MyCart");
		myCart = cartDAO.getMyCartById(id);
		int qty = myCart.getProQuan();
		qty++;
		myCart.setProQuan(qty);
		myCart.setSum(cartDAO.getProductSum((int) myCart.getProCost(), qty));
		cartDAO.update(myCart);
		return mv;
	}
	
	@Transactional
	@RequestMapping(value="decreasequantity",method=RequestMethod.GET)
	public ModelAndView validateEditCartLess(@RequestParam("id")int id,@ModelAttribute MyCart myCart)
	{
		ModelAndView mv = new ModelAndView("/MyCart");
		myCart = cartDAO.getMyCartById(id);
		int qty = myCart.getProQuan();
		if(qty<=1)
		{
			myCart.setProQuan(qty);
		}
		else
		{
			qty--;
			myCart.setProQuan(qty);
		}
		myCart.setSum(cartDAO.getProductSum((int) myCart.getProCost(), qty));
		cartDAO.update(myCart);
		return mv;
	}
	
	@Transactional
	@RequestMapping(value="/deletecart",method=RequestMethod.GET)
	public ModelAndView validateDeleteCart(@RequestParam("id")int id)
	{
		ModelAndView mv = new ModelAndView("/MyCart");
		MyCart myCart = cartDAO.getMyCartById(id);
		cartDAO.delete(myCart);
		return mv;
	}

		
}
