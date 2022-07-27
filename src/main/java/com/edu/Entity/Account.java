package com.edu.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Accounts")
public class Account {
	@Override
	public String toString() {
		return "Account [username=" + username + ", password=" + password + "]";
	}

	@Id
    @Column(name = "username", nullable = false, length = 50)
	private String username;
	
	@Column(name = "password", nullable = false)
    private String password;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public Account() {
		
	}

	public Account(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	
	
}
