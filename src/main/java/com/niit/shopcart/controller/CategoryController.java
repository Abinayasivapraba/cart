package com.niit.shopcart.controller;

import java.util.List;
import java.util.Map;

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
@Controller
public class CategoryController {
	
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
		@RequestMapping("/validateAddCategory")
		public ModelAndView addCategFunction(@ModelAttribute Category category)
		{
			System.out.println("Inside add Category function");
			categoryDAO.save(category);
			ModelAndView mv= new ModelAndView("/admin");
			mv.addObject("msg", "Category ADDED");
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
		public ModelAndView editCategoryFunction(@ModelAttribute Category category)
		{
			System.out.println("Inside Category Product");
			categoryDAO.update(category);
			ModelAndView mv= new ModelAndView("/admin");
			mv.addObject("msg", "Category Edited");
			return mv;
		}


		@Transactional
		@RequestMapping("/selDeleteCategory")
		public ModelAndView deleteCategoryFunction()
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
			return mv;

		}

}
