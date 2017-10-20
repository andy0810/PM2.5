package com.ssh.oa.service;

import java.util.List;

import com.ssh.oa.base.BaseDao;
import com.ssh.oa.po.PMData;
import com.ssh.oa.po.User;

public interface PMDataService {

	void save(PMData model);
	
	PMData findByTime(PMData model);
	
}
