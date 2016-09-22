package com.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.AddUserDao;
import com.model.User;
import com.service.AddUserService;

@Service
public class AddUserServiceImpl implements AddUserService {

	@Autowired
	private AddUserDao addUserDao;

	public User addUser(User user) {
		// TODO Auto-generated method stub
		System.out.println("user  "+user);
		if (user == null) {
			return null;
		}

		else {
			addUserDao.addUser(user);
			return user;
		}

	}

}
