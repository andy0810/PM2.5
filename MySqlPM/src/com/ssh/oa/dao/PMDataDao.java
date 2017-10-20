package com.ssh.oa.dao;

import com.ssh.oa.base.BaseDao;
import com.ssh.oa.po.PMData;
import com.ssh.oa.po.User;

public interface PMDataDao extends BaseDao<PMData>{
  
	PMData findByTime(PMData model);
	
	//void save(PMData model);
}
