package com.niit.shopcart.dao.impl;

import java.util.List;

//import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.shopcart.dao.ProductDAO;
import com.niit.shopcart.model.ProductModel;
@EnableTransactionManagement
@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO {
	

	@Autowired
	private SessionFactory sessionFactory;
	
	public ProductDAOImpl(SessionFactory sessionFactory) {
		
		this.sessionFactory=sessionFactory;		
	}
	
	

	public List<ProductModel> getAllProductModel() {
		//select * from category -sql query
				// use hql(hibernate query language)
				// from Category -mention Domain Class name not table name
				//convert the hibernate query into db specific language
				return sessionFactory.getCurrentSession().createQuery("from ProductModel").list();
			}
		
	

	public boolean save(ProductModel productModel) {
		
		try {
			sessionFactory.getCurrentSession().save(productModel);
			return true;
		} catch (Exception e) {
			
			e.printStackTrace();
			return false;
		}
		
		
	}

	public boolean update(ProductModel productModel) {
		try {
			sessionFactory.getCurrentSession().update(productModel);
		} catch (Exception e) {
			
			e.printStackTrace();
		
		}
		
		
		return false;
	}

	public boolean delete(ProductModel productModel) {
		try {
			sessionFactory.getCurrentSession().delete(productModel);
		} catch (Exception e) {
		
			e.printStackTrace();
		}
		
		return false;
	}

	public boolean delete(int proId) {
		try {
			sessionFactory.getCurrentSession().delete(getproductModelById(proId));
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return false;
	}
	
	
	public ProductModel getproductModelById(int proId) {
		return (ProductModel) sessionFactory.getCurrentSession().createQuery("from ProductModel where proid ='"+ proId +"'" ).uniqueResult();
	
	}

	public ProductModel getproductModelByName(String proName) {
		return (ProductModel) sessionFactory.getCurrentSession().createQuery("from ProductModel where proname ='"+ proName +"'" ).list().get(0);
		
		
	}



	public ProductModel getProductById(int proId) {
		return (ProductModel)	sessionFactory.getCurrentSession().get(ProductModel.class, proId);

	}



	



	
				}




	
	