package com.event.service.user;

import java.util.ArrayList;
import java.util.logging.Logger;

import com.event.model.User;

public interface IUserService {

	public static final Logger log = Logger.getLogger(IUserService.class.getName());

	public void addUser(User user);
	
	public ArrayList<User> getUserById(String userId);
	
	public void updateUser(String userId, User user);
	
	public ArrayList<User> getUsers();
	
	public void deleteUser(String userId);
	
	public User getUserByID(String userId);
	  
}
