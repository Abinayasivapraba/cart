package com.niit.shopcart.dao;

import java.util.List;


import com.niit.shopcart.model.Supplier;

public interface SupplierDAO {
	public List<Supplier> getAllSupplier();

	// create category

	public boolean save(Supplier supplier);

	// update category

	public boolean update(Supplier supplier);

	// delete category by id

	public boolean delete(int supid);

	// delete category by category

	public boolean delete(Supplier supplier);

	// get category by id

	public Supplier getSupplierByID(int supid);

	// get category by name
	public Supplier getSupplierByName(Supplier supplier);

	public Supplier getSupplierByName(String supname);





}
