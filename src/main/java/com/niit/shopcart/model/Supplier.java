package com.niit.shopcart.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="supplier")

@Component
public class Supplier {
	@Id
	int supid;
	String supname;
	String supaddress;
	/*@OneToMany(mappedBy="supplier",fetch = FetchType.EAGER)
	private Set<ProductModel> products;
	
	
	public Set<ProductModel> getProducts() {
		return products;
	}*/

	
	/*public void setProducts(Set<ProductModel> products) {
		this.products = products;
	}*/
	public int getSupid() {
		return supid;
	}

	public void setSupid(int supid) {
		this.supid = supid;
	}
	public String getSupname() {
		return supname;
	}
	public void setSupname(String supname) {
		this.supname = supname;
	}
	public String getSupaddress() {
		return supaddress;
	}
	public void setSupaddress(String supaddress) {
		this.supaddress = supaddress;
	}
	/*@Override
	public String toString() {
		return "Supplier [supplierID=" + supid + ", supplierName=" + supname + ", supplieraddress="
				+ supaddress + "]";
	}*/

	
}
