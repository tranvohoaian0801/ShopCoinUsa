package com.edu.DAO;

import com.edu.Entity.Account;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AccountDAO extends JpaRepository<Account, String> {
	// Derived Query - for checking if account exist by id
    public boolean existsAccountByUsername(String username);
}