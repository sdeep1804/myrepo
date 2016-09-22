package com.daoImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.dao.AddUserDao;
import com.model.User;

@Repository
public class AddUserDaoImpl implements AddUserDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional(propagation=Propagation.REQUIRED)
	public void addUser(User user) {
		// TODO Auto-generated method stub
		
		hibernateTemplate.save(user);
	}

}
