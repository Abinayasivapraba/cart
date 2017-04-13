package com.niit.shopcart.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Component;
@Table(name="Category")
@Entity
@Component

public class Category {
	@Id
	private int catid;
	private String catname;
	private String catdesc;
	/*@OneToMany(mappedBy="category",fetch = FetchType.EAGER)
	private Set<ProductModel> productsInCategory;
	
	public Set<ProductModel> getProductsInCategory() {
		return productsInCategory;
	}*/
	//@Column(name="CATID")
	public int getCatid() {
		return catid;
	}
	public void setCatid(int catid) {
		this.catid = catid;
	}
	//@Column(name="CATNAME")
	public String getCatname() {
		return catname;
	}
	public void setCatname(String catname) {
		this.catname = catname;
	}
	//@Column(name="CATDESC")
	public String getCatdesc() {
		return catdesc;
	}
	public void setCatdesc(String catdesc) {
		this.catdesc = catdesc;
	}
	/*@Override
	public String toString() {
		return "Category [categoryID=" + catid + ", categoryName=" + catname + ", categorydescription="
				+ catdesc + "]";
	}*/

	
}
