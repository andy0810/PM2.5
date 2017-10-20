package com.ssh.oa.service.impl;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssh.oa.dao.PMDataDao;
import com.ssh.oa.po.PMData;
import com.ssh.oa.service.PMDataService;


@Service 
@Transactional
public class PMDataServiceImpl implements PMDataService {
 
	@Resource
	private PMDataDao pmDataDao;

	public void save(PMData model) {
        try {
        	pmDataDao.save(model);
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}

	public PMData findByTime(PMData model) {
		PMData pm = new PMData();
		try {
        	pm = pmDataDao.findByTime(model);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return pm;
	}
	

}
