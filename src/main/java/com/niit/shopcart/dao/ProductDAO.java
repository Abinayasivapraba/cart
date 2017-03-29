package com.niit.shopcart.dao;

import java.util.List;

import com.niit.shopcart.model.ProductModel;;
public interface ProductDAO {
	public List<ProductModel> getAllProductModel();
	public boolean save(ProductModel productModel);
	
	public boolean update(ProductModel productModel);
	
	public boolean delete (ProductModel productModel);
	public boolean delete (int proId);
	//public boolean deleteproductModelById(int proId);
	
	
	
			public ProductModel getproductModelById(int proId);
			
			//get category by name
			public ProductModel getproducModelByName(String proName);

	
	
//public ProductModel getproductModelByName(String proName);
//public void updateProduct(ProductModel product);
}