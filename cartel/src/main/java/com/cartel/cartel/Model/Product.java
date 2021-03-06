package com.cartel.cartel.Model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

import javax.persistence.OrderColumn;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


import com.cartel.cartel.Enum.accessoryType;


@AllArgsConstructor
@NoArgsConstructor
@Data
@Table(name = "Product")
@Entity
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String name;
	private float price;
	private String picture;
	@Enumerated(EnumType.STRING)
	private accessoryType accessoryType;
	
	private String dimension;
	private String description;
	
	@ManyToMany(mappedBy = "products", cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
	private Set<CardOrder> cardOrders = new HashSet<>();
		
	
	/**
     * @return the id
     */
    public Long getId() {
        return id;
    }
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the price
	 */
	public float getPrice() {
		return price;
	}
	/**
	 * @param price the price to set
	 */
	public void setPrice(float price) {
		this.price = price;
	}
	/**
	 * @return the picture
	 */
	public String getPicture() {
		return picture;
	}
	/**
	 * @param picture the picture to set
	 */
	public void setPicture(String picture) {
		this.picture = picture;
	}
	
	/**
	 * @return the accessoryType
	 */
	public accessoryType getAccessoryType() {
		return accessoryType;
	}
	/**
	 * @param accessoryType the accessoryType to set
	 */
	public void setAccessoryType(accessoryType accessoryType) {
		this.accessoryType = accessoryType;
	}

	/**
	 * @return the dimension
	 */
	public String getDimension() {
		return dimension;
	}
	/**
	 * @param dimension the dimension to set
	 */
	public void setDimension(String dimension) {
		this.dimension = dimension;
	}

	
	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}   

    
    public void addCardOrder(CardOrder cardOrder) {
        cardOrders.add(cardOrder);
        cardOrder.getProducts().add(this);
    }
    
    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", picture='" + picture + '\'' +
                ", accessoryType='" + accessoryType + '\'' +
                ", description='" + description + '\'' +
                '}';
        }
	
}

