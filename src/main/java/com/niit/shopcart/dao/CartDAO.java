package com.niit.shopcart.dao;

import java.util.List;


import com.niit.shopcart.model.MyCart;

public interface CartDAO {
	public List<MyCart> getAllCartDetails(String uid);


	
	public boolean save(MyCart myCart);
	
	public boolean update(MyCart myCart);
	
	public boolean delete(MyCart myCart);
	
	public MyCart getMyCartById(int cartid);
	
	public MyCart getMyCartByName(String proName);
	
	public int getProductSum(int proCost ,int proQuan);
	
	public int getProductTotal(String uid);

	
}
