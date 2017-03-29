package com.niit.shopcart.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.shopcart.dao.CartDAO;
import com.niit.shopcart.model.MyCart;

@EnableTransactionManagement
@Repository("cartDAO")

public class CartDAOImpl implements CartDAO {
	@Autowired
	private SessionFactory  sessionFactory;
     public CartDAOImpl(SessionFactory sessionFactory) {
		
		this.sessionFactory=sessionFactory;		
	}
	public List<MyCart> getAllMyCart() {
	 
		return null;
	}
	public boolean save(MyCart myCart) {
		try {
			sessionFactory.getCurrentSession().save(myCart);
		} catch (Exception e) {
			
		}
		return false;
	}
	public boolean update(MyCart myCart) {
		try {
			sessionFactory.getCurrentSession().update(myCart);
		} catch (Exception e) {
			
		}
		
		return false;
	}
	public boolean delete(MyCart myCart) {
		try {
			sessionFactory.getCurrentSession().delete(myCart);
		} catch (Exception e) {
			
		}
		
		return false;
	}


	

	
	

}
