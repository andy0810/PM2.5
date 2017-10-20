package com.ssh.oa.dao;

import java.util.List;

import com.ssh.oa.base.BaseDao;
import com.ssh.oa.po.PMData;
import com.ssh.oa.po.User;

public interface UserDao extends BaseDao<User>{
	List<PMData> findByCity(String cityName);
	
	//void save(User model);
}
