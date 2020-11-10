/**
 * 
 */
package com.cartel.cartel.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cartel.cartel.Model.User;

/**
 * @author USER
 *
 */
@Repository
public interface UserRepository extends JpaRepository<User, Long> {

}
