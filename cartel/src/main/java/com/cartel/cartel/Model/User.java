package com.cartel.cartel.Model;

public class User {
	
	//idUser
	private int id;
	//UserfirstName
	private String firstName;
	//UserlastName
	private String lastName;
	//UserEmail
	private String email;
	//idAdress
	private String adress;
	
	
	// Constructeur custom
		public User( int id, String firstName, String lastName, String email, String adress)
		{
			this.id = id;
			this.firstName = firstName;
			this.lastName = lastName;
			this.email = email;
			this.adress = adress;
			
		}
	
	
	
	
	
	

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the firstName
	 */
	public String getFirstName() {
		return firstName;
	}

	/**
	 * @param firstName the firstName to set
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	/**
	 * @return the lastName
	 */
	public String getLastName() {
		return lastName;
	}

	/**
	 * @param lastName the lastName to set
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the adress
	 */
	public String getAdress() {
		return adress;
	}

	/**
	 * @param adress the adress to set
	 */
	public void setAdress(String adress) {
		this.adress = adress;
	}
	

}
