package com.niit.shopcart.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class ProductController {
	@RequestMapping("/selAddProduct")
	public ModelAndView clickedAddProduct()
	{
	ModelAndView mv=new ModelAndView("/AddProduct");
	return mv;
	}
	
	

}
