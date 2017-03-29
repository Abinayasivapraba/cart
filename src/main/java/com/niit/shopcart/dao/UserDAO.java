package com.niit.shopcart.dao;

import java.util.List;

import com.niit.shopcart.model.User;

public interface UserDAO {
public List<User> getAllUser();
	
	public boolean save(User user);
	
	public boolean update(User user);
	
	public boolean delete(User user);
	
	public boolean delete(String id);
	
	public User getUserById(String id);
	
	public User getUserByName(String name);
	
	public User validateLoginCredentials(String id, String password);

}
