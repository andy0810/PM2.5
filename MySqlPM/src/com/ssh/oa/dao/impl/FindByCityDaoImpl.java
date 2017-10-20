package com.ssh.oa.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ssh.oa.base.BaseDaoImpl;
import com.ssh.oa.dao.FindByCityDao;
import com.ssh.oa.po.PMData;
import com.ssh.oa.po.User;

@Repository
public class FindByCityDaoImpl extends BaseDaoImpl<PMData> implements FindByCityDao{

	public List<PMData> findByCity(PMData model) {
		// TODO Auto-generated method stub	
		
		String str = model.getCityName();
		return   getSession().createQuery(
				"FROM PMData p WHERE p.cityName=? order by id desc")
				.setParameter(0,str)
				.setMaxResults(30)
				.list();
	}
	
	
	public List<PMData> find(String cityName) {
		// TODO Auto-generated method stub	
		
		//String str = model.getCityName();
		//str.replaceAll("\"","");
		String str = cityName;
		
		String sql = "select * from pm_info where cityName='"+str+"'"+"order by PMINFO_ID desc limit 1";
		return   getSession().createQuery(
				"FROM PMData p WHERE p.cityName=? order by id desc")
				.setParameter(0,str)
				.setMaxResults(1)
				.list();
	}
	
	public List<User> send(String cityName){
		return   getSession().createQuery(
				"FROM User u WHERE u.cityName=?")
				.setParameter(0,cityName)
			//	.setMaxResults(1)
				.list();
	}


	public List<PMData> findBySeek(String cityName, String beginTime,
			String endTime) {
		// TODO Auto-generated method stub
		 
		 String sql = "select * from pm_info where cityName='"+cityName+"' " +
					"AND updateTime between '"+beginTime+"' AND '"+endTime+"'";
		 return   getSession().createQuery(
					"FROM PMData p WHERE p.cityName=? AND updateTime between ? AND ?")
					.setParameter(0,cityName)
					.setParameter(1,beginTime)
					.setParameter(2,endTime)
					.list();
	}

}
