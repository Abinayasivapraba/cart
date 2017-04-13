package com.niit.shopcart.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class MyCart {
	@Id
	private int cartid;
	private String id;
	private String proName;
	private int proCost;
	private String status;
	private int proQuan;
	private Date dateadded;
	@Column(name="cartsum")
	private int sum;
	
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	public int getCartid() {
		return cartid;
	}
	public void setCartid(int cartid) {
		this.cartid = cartid;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	@Column(name="PRONAME")
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	@Column(name="PROCOST")
	public int getProCost() {
		return proCost;
	}
	public void setProCost(int proCost) {
		this.proCost = proCost;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Column(name="PROQUAN")
	public int getProQuan() {
		return proQuan;
	}
	public void setProQuan(int proQuan) {
		this.proQuan = proQuan;
	}
	public Date getDateadded() {
		return dateadded;
	}
	public void setDateadded(Date dateadded) {
		this.dateadded = dateadded;
	}
	
	}
