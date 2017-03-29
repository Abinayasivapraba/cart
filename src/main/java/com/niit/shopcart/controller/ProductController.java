package com.niit.shopcart.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.shopcart.dao.ProductDAO;
import com.niit.shopcart.model.ProductModel;

@Controller
@Transactional 
public class ProductController {
	@Autowired
		private ProductDAO productDAO;
	@Transactional
	
	@RequestMapping("/selAddProduct")

	public ModelAndView showAddProduct()
	{
		ModelAndView mv=new ModelAndView("/AddProduct","command", new ProductModel());
		return mv;
	}
	@Transactional
	@RequestMapping(name="/validateAddProduct",method=RequestMethod.POST)
	public ModelAndView addProduct( @ModelAttribute ProductModel productModel)
	{
	
		productDAO.save(productModel);
		
		String path="D:\\Users\\Abinaya\\workspace\\cart\\src\\main\\webapp\\resources\\images\\";
		path=path+String.valueOf(productModel.getProId())+".jpg";
		File f=new File(path);
	
		MultipartFile filedet=productModel.getPimage();
		
		if(!filedet.isEmpty())
		{
			try
			{
			  byte[] bytes=filedet.getBytes();
			  System.out.println(bytes.length);
			  FileOutputStream fos=new FileOutputStream(f);
              			BufferedOutputStream bs=new BufferedOutputStream(fos);
              			bs.write(bytes);
              			bs.close();
             			 System.out.println("File Uploaded Successfully");
			}
			catch(Exception e)
			{
				System.out.println("Exception Arised"+e);
			}
		}
		else
		{
			System.out.println("File is Empty not Uploaded");
			
		}
		ModelAndView mv= new ModelAndView("/admin");
		mv.addObject("msg", "Product ADDED");
		System.out.println("End of Product add");
		return mv;
}

	/*@Transactional
		
		@RequestMapping("/selAddProduct")
	
		public ModelAndView showAddProduct()
		{
			ModelAndView mv=new ModelAndView("/AddProduct","command", new ProductModel());
			return mv;
		}	
		
		
@Transactional		
	@RequestMapping("/validateAddProduct") 

	public ModelAndView showAddProductPage(@ModelAttribute ProductModel productModel)
	{
		
		productDAO.save(productModel);
		ModelAndView mv = new ModelAndView("/admin");
		mv.addObject("SUCCESS", "Product gets added");
		return mv;
	}*/
@Transactional
	@RequestMapping("/selEditProduct")
	public ModelAndView showEditProductPage(Map<String,Object> map)
        {
	    
	     List<ProductModel> prodList=productDAO.getAllProductModel();
		map.put("prList", prodList );
		ModelAndView mv=new ModelAndView("/EditProduct",map);
		return mv;
		
		}
	
	@Transactional
	@RequestMapping("/findProduct")
	public ModelAndView findProduct(@RequestParam("proId") int proId)
	{
		ProductModel pr=productDAO.getproductModelById(proId);
		ModelAndView mv=new ModelAndView("/EditProd1", "command", new ProductModel() );
		mv.addObject("prFound", pr);
		return mv;
	}
	@Transactional
	@RequestMapping(value="/Editproduct",  method = RequestMethod.POST)
	public ModelAndView editProductFunc(@ModelAttribute ProductModel productModel)
	{
		System.out.println("Inside Edit Product");
		productDAO.update(productModel);
		ModelAndView mv= new ModelAndView("/admin");
		mv.addObject("msg", "Product gets Edited");
		return mv;
	}

	

@RequestMapping("/selDeleteProduct")
public ModelAndView showDeleteProductPage(Map<String, Object> map)
{
	List<ProductModel> prodList=productDAO.getAllProductModel();
	map.put("prList", prodList );
	ModelAndView mv=new ModelAndView("/DeleteProduct",map);
	return mv;
}

@RequestMapping("/deleteProduct")
public ModelAndView deleteProduct(@RequestParam("proId") int proId)
{
	productDAO.delete(proId);
	ModelAndView mv=new ModelAndView("/admin","command", new ProductModel() );
	return mv;

}
@Transactional
@RequestMapping("/selViewProduct")
public ModelAndView showViewProductPage(Map<String, Object> map)
{
	String path="D:\\Users\\Abinaya\\workspace\\cart\\src\\main\\webapp\\resources\\images\\";
	
	List<ProductModel> prodList=productDAO.getAllProductModel();
	map.put("prList", prodList );
	map.put("path", path);
	ModelAndView mv=new ModelAndView("/ViewProduct",map);
	return mv;
}
@Transactional
@RequestMapping("/Products")
public ModelAndView showProducts()
{
	System.out.println("Inside View Products");
	List<ProductModel> prList=productDAO.getAllProductModel();
	ModelAndView mv=new ModelAndView("/Products");
	mv.addObject("prods", prList);
	System.out.println("Outside View Products");
	return mv;
}



}





