package com.ssh.oa.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.ssh.oa.base.BaseDaoImpl;
import com.ssh.oa.dao.UserDao;
import com.ssh.oa.po.PMData;
import com.ssh.oa.po.User;

@Repository
public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao{

	
	public List<PMData> findByCity(String cityName) {
		
		
		return  getSession().createQuery(
				"FROM PMData p WHERE p.cityName=? order by id desc")
				.setParameter(0,cityName)
				.setMaxResults(1)
				.list();
	}
}
