package hr.fer.webshop.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="[user_role]")
public class UserRole {
		
	public UserRole() {
		super();
	}

	public UserRole(Long id, String role) {
		super();
		this.id = id;
		this.role = role;
	}

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="[id]")
	private Long id;
	
	@Column(name="[role]")
	private String role;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	
}
