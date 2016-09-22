package com.dao;

import java.util.List;

import com.model.User;

public interface UserDetailDao {
	
	public abstract List<User> getListUser();
	
	public abstract User getUser(int userID);

}
