package com.ssh.oa.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssh.oa.dao.FindByCityDao;
import com.ssh.oa.po.PMData;
import com.ssh.oa.po.User;
import com.ssh.oa.service.FindByCityService;

@Service 
@Transactional
public class FindByCityServiceImpl implements FindByCityService{

	@Resource
	private FindByCityDao findByCityDao;
	
	public List<PMData> findByCity(PMData model) {
		List<PMData> allByCity = new ArrayList<PMData>();
		try {
		 allByCity = findByCityDao.findByCity(model);
		
	}catch (Exception e) {
		e.printStackTrace();
	}
		return allByCity;
	}
	
	public List<PMData> find(String cityName) {
		List<PMData> allByCity = new ArrayList<PMData>();
		try {
		 allByCity = findByCityDao.find(cityName);
		
	}catch (Exception e) {
		e.printStackTrace();
	}
		return allByCity;
	}

	public List<User> send(String cityName) {
		List<User> allUser = new ArrayList<User>();
		try{
			allUser = findByCityDao.send(cityName);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return allUser;
	}
	
	
	public List<PMData> findBySeek(String cityName, String beginTime,
			String endTime) {
		List<PMData> allByCity = new ArrayList<PMData>();
		try {
		 allByCity = findByCityDao.findBySeek(cityName,beginTime,endTime);
		
	}catch (Exception e) {
		e.printStackTrace();
	}
		return allByCity;
	}
}
