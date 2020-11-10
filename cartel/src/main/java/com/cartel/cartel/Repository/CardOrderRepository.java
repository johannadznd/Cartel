/**
 * 
 */
package com.cartel.cartel.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cartel.cartel.Model.CardOrder;

/**
 * @author USER
 *
 */
@Repository
public interface CardOrderRepository extends JpaRepository<CardOrder, Long> {
	
}
