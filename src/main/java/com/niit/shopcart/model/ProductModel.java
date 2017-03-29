package com.niit.shopcart.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
@Entity
@Component
@Table(name="ProductModel")
public class ProductModel {
	
	//@GeneratedValue(strategy= GenerationType.AUTO,generator="proId") 
	
	@Transient
	MultipartFile pimage;
	public MultipartFile getPimage() {
		return pimage;
	}
	public void setPimage(MultipartFile pimage) {
		this.pimage = pimage;
	}
	String proName;
	int supId;
	int catId;
	String proDesc;
	int proQuan;
	int proCost;
	@Id
	int proId;
	@Column(name="PROID")
	public int getProId() {
		return proId;
	}
	public void setProId(int proId) {
		this.proId = proId;
	}
	@Column(name="PRONAME")
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	@Column(name="SUPID")
	public int getSupId() {
		return supId;
	}
	public void setSupId(int supId) {
		this.supId = supId;
	}
	@Column(name="CATID")
	public int getCatId() {
		return catId;
	}
	public void setCatId(int catId) {
		this.catId = catId;
	}
	@Column(name="PRODESC")
	public String getProDesc() {
		return proDesc;
	}
	public void setProDesc(String proDesc) {
		this.proDesc = proDesc;
	}
	@Column(name="PROQUAN")
	public int getProQuan() {
		return proQuan;
	}
	public void setProQuan(int proQuan) {
		this.proQuan = proQuan;
	}
	@Column(name="PROCOST")
	public int getProCost() {
		return proCost;
	}
	public void setProCost(int proCost) {
		this.proCost = proCost;
	}
	
	
}