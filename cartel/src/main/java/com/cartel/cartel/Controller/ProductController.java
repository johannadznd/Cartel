/**
 * 
 */
package com.cartel.cartel.Controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import com.cartel.cartel.Enum.accessoryType;
import com.cartel.cartel.Model.CardOrder;
import com.cartel.cartel.Model.Product;
import com.cartel.cartel.Repository.ProductRepository;

/**
 * @author USER
 *
 */
@CrossOrigin(origins = "http://localhost:3000", maxAge = 3600)
@RestController
@RequestMapping({"/product"})
public class ProductController {

		private ProductRepository repository;
		
		ProductController(ProductRepository productRepository) {
			this.repository = productRepository;
		}
	  
	  // CRUD
	  /**
	   * Permet dde récupérer l'ensemble des products.
	   * @return la liste products.
	   */
	  @GetMapping(value= "/tous")
	  public List<Product> findAll(){
		  return repository.findAll();
	  }
	  
	  /**
		 * Recupérer un produit avec un id
		 * @param id
		 * @return un produit
		 */

		@GetMapping(value = "/{id}")
		public ResponseEntity<Product> findById(@PathVariable long id){
			return repository.findById(id)
					.map(record -> ResponseEntity.ok().body(record))
					.orElse(ResponseEntity.notFound().build());
		}
	  
	  /**
	   * Permet dde récupérer l'ensemble des products.
	   * @return la liste products.
	   */
	  @GetMapping(value= "/category/{category}")
	  public List<Product> findAllByCategory(@PathVariable("category") String category){
		  List<Product> products = new ArrayList<>();
		  
	      for(Product product : repository.findAll()) {
	    	  if(product.getAccessoryType().toString().equals(category)) {
	    		  products.add(product);
	    	  }
	      }
		  return products;
	  }
	

	  /**
	   * Permet de créer un product.
	   * @param product
	   * @return
	   */
	  @PostMapping(value = "/create")
	  public Product create(@RequestBody Product product){
		  // Java 7 et antérieur
		  return repository.save(product);
		  // On peut aussi l'améliorer en Java 8 en prenant exemple sur la recherche par Id ;)
		  
	  }
	  
	  
	  
	  
	  /**
	   * Permet de modifier un product par son ID.
	   * @param id : id du product à modifier.
	   * @param etudiant : Les informations à modifier pour l'étudiant identifé par son ID.
	   * @return : ResponseEntity permettant de connaître le statut de la requête : OK/KO.
	   */
	  @PutMapping(value="/change/{id}")
	  public ResponseEntity<Product> update(@PathVariable("id") long id,
	                                        @RequestBody Product product){
		  return repository.findById(id)
				  .map(record -> {
					  record.setName(product.getName());
					  record.setPrice(product.getPrice());
					  record.setPicture(product.getPicture());
					  record.setAccessoryType(product.getAccessoryType());
					  record.setDimension(product.getDimension());
					  Product updated = repository.save(record);
					  return ResponseEntity.ok().body(updated);
				  }).orElse(ResponseEntity.notFound().build());
	  }
	  

	  
	  
	  /**
	   * Permet de supprimer un produit par son ID.
	   * @param id : ID de l'étudiant à supprimer de la BDD.
	   * @return : ResponseEntity permettant de connaître le statut de la requête : OK/KO.
	   */
	  
	  @DeleteMapping(value ="/delete/{id}")
	  public ResponseEntity<?> delete(@PathVariable("id") long id) {
		  return repository.findById(id)
				  .map (record -> {
					  repository.deleteById(id);
					  return ResponseEntity.ok().build();
				  }).orElse(ResponseEntity.notFound().build());
	  }
	   
}







	  
	  
	  
	 
	 
	
	  

