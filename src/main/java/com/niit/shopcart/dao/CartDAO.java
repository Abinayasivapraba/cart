package com.niit.shopcart.dao;

import java.util.List;


import com.niit.shopcart.model.MyCart;

public interface CartDAO {
	public List<MyCart> getAllMyCart();

	// create Cart

	public boolean save(MyCart myCart);

	// update Cart

	public boolean update(MyCart myCart);

	// delete Cart by id

	public boolean delete(MyCart myCart);

	// delete Cart by Cart

	//public Long getTotalAmount(String id);

}
