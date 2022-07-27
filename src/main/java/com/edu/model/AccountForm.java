package com.edu.model;

import java.io.Serializable;

public class AccountForm implements Serializable{
	 private String username;

	    private String password;

	    private String retypePassword;
	    
	    public AccountForm() {
			
		}

		public AccountForm(String username, String password, String retypePassword) {
			super();
			this.username = username;
			this.password = password;
			this.retypePassword = retypePassword;
		}

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

		public String getRetypePassword() {
			return retypePassword;
		}

		public void setRetypePassword(String retypePassword) {
			this.retypePassword = retypePassword;
		}
		
		
		public AccountForm username(String username) {
	        setUsername(username);
	        return this;
	    }


	    public AccountForm password(String password) {
	        setPassword(password);
	        return this;
	    }

	    public AccountForm retypePassword(String retypePassword) {
	        setRetypePassword(retypePassword);
	        return this;
	    }
}
