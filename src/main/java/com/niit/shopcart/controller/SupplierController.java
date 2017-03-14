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

import com.niit.shopcart.dao.SupplierDAO;
import com.niit.shopcart.model.Supplier;

@Controller

public class SupplierController {
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
	@RequestMapping("/validateAddSupplier")
	public ModelAndView addSupplierFunction(@ModelAttribute Supplier supplier)
	{
		System.out.println("Inside add Supplier function");
		supplierDAO.save(supplier);
		ModelAndView mv= new ModelAndView("/admin");
		mv.addObject("msg", "Supplier ADDED");
		return mv;
	}
	@Transactional
	@RequestMapping("/selEditSupplier")
	public ModelAndView showEditCategory(Map<String, Object> map)
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
	public ModelAndView editSupplierFunction(@ModelAttribute Supplier supplier)
	{
		System.out.println("Inside Supplier Function");
		supplierDAO.update(supplier);
		ModelAndView mv= new ModelAndView("/admin");
		mv.addObject("msg", "Supplier Edited");
		return mv;
	}


	@Transactional
	@RequestMapping("/selDeleteSupplier")
	public ModelAndView deleteSupplierFunction()
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

	}


	


}
