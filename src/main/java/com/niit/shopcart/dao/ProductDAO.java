package com.niit.shopcart.dao;

import java.util.List;

import com.niit.shopcart.model.ProductModel;;
public interface ProductDAO {
	public List<ProductModel> getAllProductModel();
	public boolean save(ProductModel productModel);
	
	public boolean update(ProductModel productModel);
	
	public boolean delete(ProductModel productModel);
	
	public boolean delete(int proId);
	//public boolean deleteproductModelById(int proId);
	//public List<ProductModel> getAllProductModel(String proName);
	
	
	
			public ProductModel getproductModelById(int proId);
			
			//get product by name
			public ProductModel getproductModelByName(String proName);

	
	
}