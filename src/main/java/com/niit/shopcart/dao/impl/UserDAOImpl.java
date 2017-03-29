package com.niit.shopcart.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.shopcart.dao.UserDAO;
import com.niit.shopcart.model.User;
@EnableTransactionManagement
@Repository("userDAO")

public class UserDAOImpl implements UserDAO {
	@Autowired
	private SessionFactory sessionFactory;

	
	
	@Autowired
	User user;
	
	public UserDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
	}
	
	public List<User> getAllUser() {
		return sessionFactory.getCurrentSession().createQuery("from User").list();
	}

	public boolean save(User user) {
		try {
			sessionFactory.getCurrentSession().save(user);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	public boolean delete(User user) {
		try {
			sessionFactory.getCurrentSession().delete(user);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	public boolean update(User user) {
		try {
			sessionFactory.getCurrentSession().update(user);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	public User getUserById(String id) {
		return (User) sessionFactory.getCurrentSession().get(User.class, id);
	}

	public User getUserByName(String name) {
		return (User) sessionFactory.getCurrentSession().createQuery("from User where name='"+name+"'").uniqueResult();
	}

	public User validateLoginCredentials(String id, String password) {
		user = (User) sessionFactory.getCurrentSession().get(User.class, id);
		return user;
	}

	public boolean delete(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	
}
	
