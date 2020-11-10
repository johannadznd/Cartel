/**
 * 
 */
package com.cartel.cartel.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cartel.cartel.Model.Product;

/**
 * @author USER
 *
 */
@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {

}
