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

import com.niit.shopcart.dao.SupplierDAO;
import com.niit.shopcart.model.Category;
import com.niit.shopcart.model.Supplier;

@Controller

public class SupplierController {
	
	
	private static final Logger log = LoggerFactory.getLogger(SupplierController.class);
	
	
	@Autowired
	private SupplierDAO supplierDAO;
	@Transactional
	@RequestMapping("/selAddSupplier")
	public ModelAndView showAddSupplier()
	{
		ModelAndView mv=new ModelAndView("/AddSupplier", "command", new Supplier());
		return mv;
	}
	@Transactional
	@RequestMapping(value="/validateAddSupplier", method=RequestMethod.POST)
	public ModelAndView addSupplierFunc(@ModelAttribute Supplier supplier)
	{
		log.debug("Inside add Supplier function");
		supplierDAO.save(supplier);
		ModelAndView mv= new ModelAndView("/admin");
		mv.addObject("msg", "Supplier gets Added");
		return mv;
	}
	@Transactional
	@RequestMapping("/selEditSupplier")
	public ModelAndView showEditCategoryPage(Map<String, Object> map)
	{
		List<Supplier> suppList=supplierDAO.getAllSupplier();
		map.put("supList", suppList );
		ModelAndView mv=new ModelAndView("/EditSupplier",map);
		return mv;
	}
	@Transactional
	@RequestMapping("/findSupplier")
	public ModelAndView findCategory(@RequestParam("supid") int supid, Map<String, Object> map)
	{
		Supplier sup=supplierDAO.getSupplierByID(supid);
		ModelAndView mv=new ModelAndView("/EditSupplier1","command", new Supplier () );
		mv.addObject("supFound", sup);
		return mv;
	}
	@Transactional
	@RequestMapping(value="/EditSupplier",  method = RequestMethod.POST)
	public ModelAndView editSupplierFunc(@ModelAttribute Supplier supplier)
	{
		log.debug("Inside Supplier Function");
		supplierDAO.update(supplier);
		ModelAndView mv= new ModelAndView("/admin");
		mv.addObject("msg", "Supplier gets Edited");
		return mv;
	}


	/*@Transactional
	@RequestMapping("/selDeleteSupplier")
	public ModelAndView deleteSupplierFunc()
	{
		ModelAndView mv=new ModelAndView("/DeleteSupplier");
		return mv;
	}
	@Transactional
	@RequestMapping("/DeleteSupplier")
	public ModelAndView deleteSupplier(@RequestParam("supid") int supid)
	{
		supplierDAO.delete(supid);
		ModelAndView mv=new ModelAndView("/admin");
		return mv;

	}*/

	@Transactional
	@RequestMapping("/selDeleteSupplier")
	public ModelAndView showDeleteSupplierPage(Map<String, Object> map)
	{
		List<Supplier> suppList=supplierDAO.getAllSupplier();
		map.put("supList", suppList );
		ModelAndView mv=new ModelAndView("/DeleteSupplier",map);
		return mv;
	}
	@Transactional
	@RequestMapping("/deleteSupplier")
	public ModelAndView deleteSupplier(@RequestParam("supid") int supid)
	{
		supplierDAO.delete(supid);
		ModelAndView mv=new ModelAndView("/admin","command", new Supplier() );
		return mv;

	}


	


}
