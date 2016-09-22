package com.service;

import java.util.List;

import com.model.User;

public interface UserDetailService {
	
	public abstract List<User> getListUser();
	
	public abstract User getUser(int userID);

}
