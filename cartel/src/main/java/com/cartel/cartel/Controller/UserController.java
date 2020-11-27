/**
 * 
 */
package com.cartel.cartel.Controller;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cartel.cartel.Model.User;
import com.cartel.cartel.Repository.UserRepository;

/**
 * @author USER
 *
 */
@CrossOrigin(origins = "http://localhost:3000", maxAge = 3600)
@RestController
@RequestMapping({"/user"})
public class UserController {
	private UserRepository repository;
	
	UserController(UserRepository UserRepository) {
		this.repository = UserRepository;
	}
  
	  /**
	   * Permet de récupérer un utilisateur par son ID.
	   * @param id
	   * @return un objet utilisateur.
	   */
	  @GetMapping(value = "/{id}")
	  public ResponseEntity<User> findById(@PathVariable long id){
		  	return repository.findById(id)
		  			.map(record -> ResponseEntity.ok().body(record))
		  			.orElse(ResponseEntity.notFound().build());
	  }
	  
	  /**
	   * Permet de créer un utilisateur.
	   * @param utilisateur
	   * @return
	   */
	  @PostMapping(value = "/create")
	  public User create(@RequestBody User user){
		  return repository.save(user);
	  }
}
