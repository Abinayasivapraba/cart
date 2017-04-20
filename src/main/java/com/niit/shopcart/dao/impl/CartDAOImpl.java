package com.niit.shopcart.dao.impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
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
	public List<MyCart> getAllCartDetails(String uid) {
		
		return sessionFactory.getCurrentSession().createQuery("from MyCart where id='"+uid+"'").list();
	}
	public boolean save(MyCart myCart) {
		try {
			sessionFactory.getCurrentSession().save(myCart);
		} catch (HibernateException e) {
			
			e.printStackTrace();
		}
		return false;
	}
	public boolean update(MyCart myCart) {
		try {
			sessionFactory.getCurrentSession().update(myCart);
		} catch (HibernateException e) {
			
			e.printStackTrace();
		}
		return false;
	}
	public boolean delete(MyCart myCart) {
		try {
			sessionFactory.getCurrentSession().delete(myCart);
		} catch (HibernateException e) {
			
			e.printStackTrace();
		}
		
		return false;
	}
	public MyCart getMyCartById(int cartid) {
		return (MyCart) sessionFactory.getCurrentSession().get(MyCart.class, cartid);

	
	}
	public MyCart getMyCartByName(String proName) {
		return (MyCart) sessionFactory.getCurrentSession().createQuery("from MyCart where proname='"+proName+"'").uniqueResult();
	}
	public int getProductSum(int proCost, int proQuan) {
		return proCost*proQuan;
	}
	/*public int getProductTotal(String uid)
	{
		String hql = "select isnull(sum(sumprice),0) from MyCart where user_id='"+uid+"'";
		String result = sessionFactory.getCurrentSession().createSQLQuery(hql).uniqueResult().toString();
		int total = Integer.parseInt(result);
		return total;
	}*/
	
	
	
	}
