package com.ssh.oa.service;

import java.util.List;

import com.ssh.oa.po.PMData;
import com.ssh.oa.po.User;

public interface FindByCityService {
	
	List<PMData> findByCity(PMData model);
	
	List<PMData> find(String cityName);
	
	List<User> send(String cityName);
	
	
	List<PMData> findBySeek(String cityName, String beginTime,
			String endTime);
}
