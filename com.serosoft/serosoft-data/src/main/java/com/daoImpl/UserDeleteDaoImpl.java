package com.daoImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.dao.UserDeleteDao;
import com.model.User;

@Repository
public class UserDeleteDaoImpl implements UserDeleteDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	public void deleteUser(int userID) {
		// TODO Auto-generated method stub
		hibernateTemplate.delete(hibernateTemplate.get(User.class, userID));
	}

}
