package com.daoImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.dao.UpdateUserDao;
import com.model.User;

@Repository
public class UpdateUserDaoImpl implements UpdateUserDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		hibernateTemplate.merge(user);
	}

}
