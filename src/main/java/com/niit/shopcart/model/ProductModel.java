package com.niit.shopcart.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
	/*@ManyToOne
	@JoinColumn(name = "supid", nullable = false, updatable = false, insertable = false)
	private Supplier supplier;
	
	public Supplier getSupplier() {
		return supplier;
	}
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	@ManyToOne
	@JoinColumn(name = "catid", nullable = false, updatable = false, insertable = false)
	private Category category;
*/	
	

	String proName;
	int supid;
	int catid;
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
	public int getSupid() {
		return supid;
	}
	public void setSupid(int supid) {
		this.supid = supid;
	}
	@Column(name="CATID")
	public int getCatid() {
		return catid;
	}
	public void setCatid(int catid) {
		this.catid = catid;
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