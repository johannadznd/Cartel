/**
 * 
 */
package com.cartel.cartel.Controller;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cartel.cartel.Model.CardOrder;
import com.cartel.cartel.Repository.CardOrderRepository;

/**
 * @author USER
 *
 */
@RestController
@RequestMapping({"/cardorder"})
public class CardOrderController {
	
	private CardOrderRepository repository;
	
	CardOrderController(CardOrderRepository cardOrderRepository){
		this.repository = cardOrderRepository;
	}
	
	
	//CRUD
	
	/**
	 * get toute les commandes
	 * @return liste des commandes
	 */
	
	@GetMapping(value="/commandes")
	public List<CardOrder>findAll(){
		return repository.findAll();
	}
	
	
	/**
	 * Recupérer toutes les commandes avec un id
	 * @param id
	 * @return une commande
	 */

	@GetMapping(value = "/{id}")
	public ResponseEntity<CardOrder> findById(@PathVariable long id){
		return repository.findById(id)
				.map(record -> ResponseEntity.ok().body(record))
				.orElse(ResponseEntity.notFound().build());
	}
	
	/**
	 * Créer une commande
	 * @param commande
	 * @return une nouvelle commande
	 */
	
	@PostMapping(value = "/create/one")
	public List<CardOrder> create(@RequestBody List<CardOrder> cardOrder) {
		return repository.saveAll(cardOrder);
	}
	
	/**
	 * Modifier une commande avec un id
	 * @param id 
	 * @param commande
	 * @return ResponseEntity : statut de la requête
	 */
	
	@PutMapping(value="/edit/{id}")
	public ResponseEntity<CardOrder> update(@PathVariable("id") long id,
											@RequestBody CardOrder cardOrder ){
		return repository.findById(id)
				.map(record -> {
					record.setUser(cardOrder.getUser());
					record.setPrice(cardOrder.getPrice());
					record.setCreation(cardOrder.getCreation());
					CardOrder updated = repository.save(record);
					return ResponseEntity.ok().body(updated);
				}).orElse(ResponseEntity.notFound().build());
	}
	
	/**
	 * Supprimer une commande via un id
	 * @param id
	 * @return ResponseEntity : statut de la requête
	 */
	
	@DeleteMapping(value ="/delete/{id}")
	public ResponseEntity<?> delete(@PathVariable("id") long id){
		return repository.findById(id)
				.map (record -> { 
					repository.deleteById(id);
					return ResponseEntity.ok().build();
				}).orElse(ResponseEntity.notFound().build());
		
	}
}
