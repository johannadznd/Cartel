package com.cartel.cartel.Model;

import java.sql.Timestamp;
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
import javax.persistence.ManyToOne;
import javax.persistence.JoinColumn;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
public class CardOrder {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private float price;
	private Timestamp creation;
	
	@ManyToOne @JoinColumn(name="User")
    private User user;

    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
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
	public Timestamp getCreation() {
		return creation;
	}

	/**
	 * @param creation the creation to set
	 */
	public void setCreation(Timestamp creation) {
		this.creation = creation;
	}

	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
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
