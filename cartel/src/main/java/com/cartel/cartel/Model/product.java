package com.cartel.cartel.Model;

import java.sql.Array;

public class product {

	private Integer idProduct;
	
	private String name;
	
	private Integer price;
	
	private String picture;
	
	private enum Type {sleeve, box, carpet};
	
	Type type = Type.sleeve;
	
	private Array dimension;
	
	public Integer getIdProduct() {
		return idProduct;
	}

	public void setIdProduct(Integer idProduct) {
		this.idProduct = idProduct;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public Array getDimension() {
		return dimension;
	}

	public void setDimension(Array dimension) {
		this.dimension = dimension;
	}
		
	
   public Type getType() {
       return type;
   }

 
   public void setStyle(Type type) {
       this.type = type;
   }
	
}
