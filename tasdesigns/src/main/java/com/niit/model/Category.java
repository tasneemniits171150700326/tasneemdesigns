package com.niit.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
@Entity
public class Category {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
private int cid;
private String categoryDetails;
@OneToMany(mappedBy = "category")
private List<Product> products;
public int getCid() {
	return cid;
}
public void setCid(int cid) {
	this.cid = cid;
}
public String getCategoryDetails() {
	return categoryDetails;
}
public void setCategoryDetails(String categoryDetails) {
	this.categoryDetails = categoryDetails;
}
public List<Product> getProducts() {
	return products;
}
public void setProducts(List<Product> products) {
	this.products = products;
}
}
