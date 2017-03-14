package com.niit.shopcart.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.shopcart.dao.SupplierDAO;
import com.niit.shopcart.model.Supplier;

@EnableTransactionManagement
@Repository("supplierDAO")

public class SupplierDAOImpl implements SupplierDAO {
	@Autowired
	private SessionFactory sessionFactory;


	public List<Supplier> getAllSupplier() {
		
		//select * from category  -SQL Query - mention the table name
				//from Category  -> HQL -mention Domain class name not table name
				
				//convert the hibernate query into db specific language
			return	sessionFactory.getCurrentSession().createQuery("from Supplier").list();
				
	}

	public boolean save(Supplier supplier) {
	
		try {
			sessionFactory.getCurrentSession().save(supplier);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return false;
	}

	public boolean update(Supplier supplier) {
		try {
			sessionFactory.getCurrentSession().update(supplier);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return false;
	}

	public boolean delete(int supid) {
		try {
			sessionFactory.getCurrentSession().delete(getSupplierByID(supid));
		} catch (Exception e) {
			
			e.printStackTrace();
		}	
		return false;
	}

	public boolean delete(Supplier supplier) {
		try {
			sessionFactory.getCurrentSession().delete(supplier);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return false;
	}

	public Supplier getSupplierByID(int supid) {
		
		return(Supplier) sessionFactory.getCurrentSession().createQuery("from Supplier where id ="+supid +"" ).uniqueResult();
		
	}

	public Supplier getSupplierByName(String supname) {
		
		return (Supplier) sessionFactory.getCurrentSession().createQuery("from Supplier where name ="+ supname +"" ).list().get(0);
		
	}

	public Supplier getSupplierByName(Supplier supplier) {
		// TODO Auto-generated method stub
		return null;
	}

	



}
