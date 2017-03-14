package com.niit.shopcart.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopcart.dao.ProductDAO;
import com.niit.shopcart.model.ProductModel;

@Controller
@Transactional 
public class ProductController {
	@Autowired
		private ProductDAO productDAO;
		
		@RequestMapping("/selAddProduct")
	
		public ModelAndView showPAdd()
		{
			ModelAndView mv=new ModelAndView("/AddProduct","command", new ProductModel());
			return mv;
		}	
		
		
@Transactional		
	@RequestMapping("/validateAddProduct") 

	public ModelAndView showAddProductPage(@ModelAttribute ProductModel productModel)
	{
		//Which Page To Navigate
		productDAO.save(productModel);
		ModelAndView mv = new ModelAndView("/admin");
		mv.addObject("SUCCESS", "productadded");
		return mv;
	}
	
	@RequestMapping("/selEditProduct")
	public ModelAndView showProductEdit(Map<String, Object> map)
	{
		List<ProductModel> prodList=productDAO.getAllProductModel();
		map.put("prList", prodList );
		ModelAndView mv=new ModelAndView("/EditProduct",map);
		return mv;
	}
	@Transactional
	@RequestMapping("/findProduct")
	public ModelAndView findProduct(@RequestParam("proId") int proId, Map<String, Object> map)
	{
		ProductModel pr=productDAO.getproductModelById(proId);
		ModelAndView mv=new ModelAndView("/EditProd1","command", new ProductModel() );
		mv.addObject("prFound", pr);
		return mv;
	}
	@Transactional
	@RequestMapping(value="/EditProduct",  method = RequestMethod.POST)
	public ModelAndView editProductFunction(@ModelAttribute ProductModel productModel)
	{
		System.out.println("Inside Edit Product");
		productDAO.update(productModel);
		ModelAndView mv= new ModelAndView("/admin");
		mv.addObject("msg", "Product Edited");
		return mv;
	}

	
@RequestMapping("/selDeleteProduct")
public ModelAndView deleteProductFunction()
{
	ModelAndView mv=new ModelAndView("/DeleteProduct");
	return mv;
}

@RequestMapping("/DeleteProduct")
public ModelAndView deleteProduct(@RequestParam("proId") int proId)
{
	productDAO.delete(proId);
	ModelAndView mv=new ModelAndView("/admin");
	return mv;

}


}

