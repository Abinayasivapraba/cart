package com.niit.shopcart.controller;

import java.util.List;
import java.util.Map;

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

import com.niit.shopcart.dao.CategoryDAO;
import com.niit.shopcart.model.Category;
import com.niit.shopcart.model.ProductModel;
@Controller
public class CategoryController {
	
	private static final Logger log = LoggerFactory.getLogger(CategoryController.class);
	
	
	
	@Autowired
		private CategoryDAO categoryDAO;
		@Transactional
		@RequestMapping("/selAddCategory")
		public ModelAndView showAddCategory()
		{
			ModelAndView mv=new ModelAndView("/AddCategory", "command", new Category());
			return mv;
		}
		@Transactional
		@RequestMapping(value="/validateAddCategory", method=RequestMethod.POST)
		public ModelAndView addCategoryFunc(@ModelAttribute Category category)
		{
			log.debug("Inside add Category function");
			categoryDAO.save(category);
			ModelAndView mv= new ModelAndView("/admin");
			mv.addObject("msg", "Category gets Added");
			return mv;
		}
		@Transactional
		@RequestMapping("/selEditCategory")
		public ModelAndView showEditCategory(Map<String, Object> map)
		{
			List<Category> catList=categoryDAO.getAllCategory();
			map.put("caList", catList );
			ModelAndView mv=new ModelAndView("/EditCategory",map);
			return mv;
		}
		@Transactional
		@RequestMapping("/findCategory")
		public ModelAndView findCategory(@RequestParam("catid") int catid, Map<String, Object> map)
		{
			Category cat=categoryDAO.getCategoryByID(catid);
			ModelAndView mv=new ModelAndView("/EditCategory1","command", new Category () );
			mv.addObject("caFound", cat);
			return mv;
		}
		@Transactional
		@RequestMapping(value="/EditCategory",  method = RequestMethod.POST)
		public ModelAndView editCategoryFunc(@ModelAttribute Category category)
		{
			log.debug("Inside Category Product");
			categoryDAO.update(category);
			ModelAndView mv= new ModelAndView("/admin");
			mv.addObject("msg", "Category gets Edited");
			return mv;
		}


		/*@Transactional
		@RequestMapping("/selDeleteCategory")
		public ModelAndView showdeleteCategoryPage()
		{
			ModelAndView mv=new ModelAndView("/DeleteCategory");
			return mv;
		}
		@Transactional
		@RequestMapping("/DeleteCategory")
		public ModelAndView deleteCategory(@RequestParam("catid") int catid)
		{
			categoryDAO.delete(catid);
			ModelAndView mv=new ModelAndView("/admin");
			return mv;*/
		@Transactional
		@RequestMapping("/selDeleteCategory")
		public ModelAndView showDeleteCategoryPage(Map<String, Object> map)
		{
			List<Category> catList=categoryDAO.getAllCategory();
			map.put("caList", catList );
			ModelAndView mv=new ModelAndView("/DeleteCategory",map);
			return mv;
		}
		@Transactional
		@RequestMapping("/deleteCategory")
		public ModelAndView deleteCategory(@RequestParam("catid") int catid)
		{
			categoryDAO.delete(catid);
			ModelAndView mv=new ModelAndView("/admin","command", new Category() );
			return mv;

		}


}
