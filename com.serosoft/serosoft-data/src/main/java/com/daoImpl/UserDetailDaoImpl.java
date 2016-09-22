package com.daoImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.dao.UserDetailDao;
import com.model.User;

@Repository
public class UserDetailDaoImpl implements UserDetailDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	public List<User> getListUser() {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		List<User> listUser = hibernateTemplate.find("from User");
		return listUser;
	}

	public User getUser(int userID) {
		// TODO Auto-generated method stub

		User userObj = hibernateTemplate.get(User.class, userID);
		return userObj;
	}

}
