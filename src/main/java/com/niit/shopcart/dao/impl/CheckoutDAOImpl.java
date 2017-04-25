package com.niit.shopcart.dao.impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.shopcart.dao.CheckoutDAO;
import com.niit.shopcart.model.Checkout;
import com.niit.shopcart.model.MyCart;
@EnableTransactionManagement
@Repository("checkoutDAO")
public class CheckoutDAOImpl implements CheckoutDAO {
	@Autowired
	MyCart myCart;
	private SessionFactory sessionFactory;
	 public CheckoutDAOImpl(SessionFactory sessionFactory) {
			
			this.sessionFactory=sessionFactory;		
		}

	public List<Checkout> getlist(String id) {
		return sessionFactory.getCurrentSession().createQuery("from Checkout where id='"+id+"'").list();
		
	}

	public boolean Save(Checkout checkout) {
		try {
			sessionFactory.getCurrentSession().save(checkout);
		} catch (HibernateException e) {
			
			e.printStackTrace();
		}
				return false;
	}

	public boolean update(Checkout checkout) {
		try {
			sessionFactory.getCurrentSession().update(checkout);
		} catch (HibernateException e) {
			
			e.printStackTrace();
		}
		
		return false;
	}

	public boolean delete(Checkout checkout) {
		try {
			sessionFactory.getCurrentSession().delete(checkout);
		} catch (HibernateException e) {
			
			e.printStackTrace();
		}
		return false;
	}

	public String checktableforempty(String id) {
		return sessionFactory.getCurrentSession().createSQLQuery("select count(*) from checkout where id='"+id+"'").uniqueResult().toString();
	}

	public List<MyCart> getAllCartDetails(String id) {
		return sessionFactory.getCurrentSession().createQuery("from MyCart where id='"+id+"'").list();
		
	}

	public double gettotal(String uid) {
		String result=sessionFactory.getCurrentSession().createSQLQuery("select isnull(sum(cartsum),0) from mycart where id='"+uid+"' and status='O'").uniqueResult().toString();
		double total=Double.parseDouble(result);
		return total;
		
	}
	
	/*public List<MyCart> getAllCartDetails(int cid) {
		return sessionFactory.getCurrentSession().createQuery("from Mycart where cid='"+cid+"'").list();
		
	}*/
	

	public boolean execute(String id) {
		// TODO Auto-generated method stub
		return false;
	}

}
