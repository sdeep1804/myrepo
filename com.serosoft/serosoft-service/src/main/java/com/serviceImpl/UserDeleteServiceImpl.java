package com.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UserDeleteDao;
import com.service.UserDeleteService;

@Service
public class UserDeleteServiceImpl implements UserDeleteService {
	
	@Autowired
	private UserDeleteDao userDeleteDao;

	public void deleteUser(int userID) {
		// TODO Auto-generated method stub
		userDeleteDao.deleteUser(userID);		
	}

}
