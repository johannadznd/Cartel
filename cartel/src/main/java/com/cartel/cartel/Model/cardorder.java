package com.cartel.cartel.Model;

import java.sql.Date;


public class cardorder {
	
	private Integer idCardOrder;
	
	private Integer price;
	
	private Date creation;
	
	private User user;

	public Integer getIdCardOrder() {
		return idCardOrder;
	}

	public void setIdCardOrder(Integer idCardOrder) {
		this.idCardOrder = idCardOrder;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public Date getCreation() {
		return creation;
	}

	public void setCreation(Date creation) {
		this.creation = creation;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}
