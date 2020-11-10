package com.cartel.cartel.Model;

import java.sql.Date;
import java.util.HashSet;
import java.util.Set;
import java.util.stream.Collectors;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.JoinColumn;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Table(name = "T_CardOrder")
@Entity
public class CardOrder {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private float price;
	private Date creation;
	private Integer user;
	
    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.PERSIST)
    @JoinTable(
            name = "product_cardorder",
            joinColumns = {@JoinColumn(name = "cardorder")},
            inverseJoinColumns = {@JoinColumn(name = "product")}
    )
    private Set<Product> products = new HashSet<>();

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
	 * @return the creation
	 */
	public Date getCreation() {
		return creation;
	}

	/**
	 * @param creation the creation to set
	 */
	public void setCreation(Date creation) {
		this.creation = creation;
	}

	/**
	 * @return the user
	 */
	public Integer getUser() {
		return user;
	}

	/**
	 * @param user the user to set
	 */
	public void setUser(Integer user) {
		this.user = user;
	}
	
    public Set<Product> getProducts() {
        return products;
    }
    
    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", price='" + price + '\'' +
                ", ceation='" + creation + '\'' +
                ", user='" + user + '\'' +
                ", products='" + products.stream().map(Product::getName).collect(Collectors.toList()) + '\'' +
                '}';
    }

}
