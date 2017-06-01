package com.niit.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;
import javax.validation.constraints.Min;


import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;


@Entity
public class Product {
   
   @Id
   @GeneratedValue(strategy=GenerationType.AUTO)
   private int productId;
   @NotEmpty(message="Product name is mandatory")
   private String productName;
   @Min(value=1000,message="Minimum price should be 1000")
   private double productPrice;
   @NotEmpty(message="Description is mandatory")
   private String productDiscription;
   @NotEmpty(message="Manufacturer details is mandatory")
   private String productManufacturer;
   @Min(value=10,message="unit in stock minimum value is 10")
   private int unitInStock;
   @ManyToOne
   @JoinColumn(name="cid")
  private Category category;
   @Transient
   private MultipartFile image;
 


public int getProductId() {
	return productId;
}
   public void setProductId(int productId) {
		this.productId = productId;
	}
public String getProductName() {
	return productName;
}
public void setProductName(String productName) {
	this.productName = productName;
}
public double getProductPrice() {
	return productPrice;
}
public void setProductPrice(double productPrice) {
	this.productPrice = productPrice;
}
public String getProductDiscription() {
	return productDiscription;
}
public void setProductDiscription(String productDiscription) {
	this.productDiscription = productDiscription;
}
public String getProductManufacturer() {
	return productManufacturer;
}
public void setProductManufacturer(String productManufacturer) {
	this.productManufacturer = productManufacturer;
}
public int getUnitInStock() {
	return unitInStock;
}
public void setUnitInStock(int unitInStock) {
	this.unitInStock = unitInStock;
}
public Category getCategory() {
	return category;
}
public void setCategory(Category category) {
	this.category = category;
}
public MultipartFile getImage() {
	return image;
}
public void setImage(MultipartFile image) {
	this.image = image;
}

   
}
