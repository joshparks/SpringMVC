package com.joshparks.spring.dao;

import java.util.List;

import com.joshparks.spring.domain.User;

public interface UserDAO {

	public List<User> getAllUsers();

	public void addUser();
		
}
