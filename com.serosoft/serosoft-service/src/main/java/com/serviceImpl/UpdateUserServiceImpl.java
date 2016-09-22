package com.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UpdateUserDao;
import com.model.User;
import com.service.UpdateUserService;

@Service
public class UpdateUserServiceImpl implements UpdateUserService {

	@Autowired
	private UpdateUserDao updateUserDao;

	public void updateUser(User user) {
		// TODO Auto-generated method stub
		updateUserDao.updateUser(user);

	}

}
