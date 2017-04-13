package com.niit.shopcart.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.shopcart.dao.CategoryDAO;
import com.niit.shopcart.model.Category;
@Repository("CategoryDAO")

public class CategoryDAOImpl implements CategoryDAO {
	@Autowired
	private SessionFactory sessionFactory;


	public List<Category> getAllCategory() {
		
		//select * from category  -SQL Query - mention the table name
				//from Category  -> HQL -mention Domain class name not table name
				
				//convert the hibernate query into db specific language
			return	sessionFactory.getCurrentSession().createQuery("from Category").list();
				
	}

	public boolean save(Category category) {
	
		try {
			sessionFactory.getCurrentSession().save(category);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return false;
	}

	public boolean update(Category category) {
		try {
			sessionFactory.getCurrentSession().update(category);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return false;
	}

	public boolean delete(int catid) {
		try {
			sessionFactory.getCurrentSession().delete(getCategoryByID(catid));
		} catch (Exception e) {
			
			e.printStackTrace();
		}	
		return false;
	}

	public boolean delete(Category category) {
		try {
			sessionFactory.getCurrentSession().delete(category);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return false;
	}

	public Category getCategoryByID(int catid) {
		
		return(Category) sessionFactory.getCurrentSession().createQuery("from Category where  catid ='"+ catid +"'" ).uniqueResult();
		
	}

	public Category getCategoryByName(String catname) {
		
		return (Category) sessionFactory.getCurrentSession().createQuery("from Category where catname ='"+ catname +"'" ).list().get(0);
		
	}

	

}
