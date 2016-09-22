package com.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UserDetailDao;
import com.model.User;
import com.service.UserDetailService;

@Service
public class UserDeatailServiceImpl implements UserDetailService {

	@Autowired
	private UserDetailDao userDetailDao;

	public List<User> getListUser() {
		// TODO Auto-generated method stub
		List<User> listUser = userDetailDao.getListUser();

		return listUser;
	}

	public User getUser(int userID) {
		// TODO Auto-generated method stub
		User userObj=userDetailDao.getUser(userID);
		return userObj;
	}

}
