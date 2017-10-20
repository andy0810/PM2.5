package com.ssh.oa.dao;

import java.util.List;

import com.ssh.oa.base.BaseDao;
import com.ssh.oa.po.PMData;
import com.ssh.oa.po.User;

public interface FindByCityDao extends BaseDao<PMData>{
	
	List<PMData> findByCity(PMData model);
	
	List<PMData> find(String cityName);

	List<User> send(String cityName);
	
	List<PMData> findBySeek(String cityName,String beginTime,String endTime);
}
