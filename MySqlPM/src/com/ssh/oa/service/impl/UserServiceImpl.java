package com.ssh.oa.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssh.oa.dao.UserDao;
import com.ssh.oa.po.PMData;
import com.ssh.oa.po.User;
import com.ssh.oa.service.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService {
 
	@Resource
	private UserDao userDao;
	
	public void save(User user) {
		try {
			userDao.save(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<PMData> findByCity(String cityName) {
		List<PMData> allUser = new ArrayList<PMData>();
		try {
			allUser = userDao.findByCity(cityName);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return allUser;
	}

}
