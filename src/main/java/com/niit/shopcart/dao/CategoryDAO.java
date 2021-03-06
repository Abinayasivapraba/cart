package com.niit.shopcart.dao;

import java.util.List;

import com.niit.shopcart.model.Category;

public interface CategoryDAO {
	// declare the methods related to CRUD operations
		// access_specifier return_type method_name(parameter_list) throws
		// exception_list

		// get all categories

		public List<Category> getAllCategory();

		// create category

		public boolean save(Category category);

		// update category

		public boolean update(Category category);

		// delete category by id

		public boolean delete(int catid);

		// delete category by category

		public boolean delete(Category category);

		// get category by id

		public Category getCategoryByID(int catid);

		// get category by name
		public Category getCategoryByName(String catname);



}
