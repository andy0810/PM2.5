package com.ssh.oa.dao.impl;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import com.ssh.oa.base.BaseDaoImpl;
import com.ssh.oa.dao.PMDataDao;
import com.ssh.oa.dao.UserDao;
import com.ssh.oa.po.PMData;
import com.ssh.oa.po.User;

@Repository
public class PMDataDaoImpl extends BaseDaoImpl<PMData> implements PMDataDao{

	public PMData findByTime(PMData model) {

		return (PMData) getSession().createQuery(
				"FROM PMData p WHERE p.cityName=? AND p.updateTime=?")
				.setParameter(0, model.getCityName())
				.setParameter(1, model.getUpdateTime())
				.uniqueResult();
		//return null ;
	}

}
