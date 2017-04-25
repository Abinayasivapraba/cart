package com.niit.shopcart.dao;

import java.util.List;

import com.niit.shopcart.model.Checkout;
import com.niit.shopcart.model.MyCart;

public interface CheckoutDAO {
public List<Checkout> getlist(String id);
	
	public boolean Save(Checkout checkout);
	
	public boolean update(Checkout checkout);
	
	public boolean delete(Checkout checkout);
	
	public String checktableforempty(String id);
	
	public List<MyCart> getAllCartDetails(String id);
	
	public double gettotal(String uid);
	
	public boolean execute(String id);
	
	//public List<Checkout> getlist(int cid);
	//public List<MyCart> getAllCartDetails(int cartid);
	
	//public List<MyCart> getAllCartDetails(int cid);



}
