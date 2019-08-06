package com.lti.homeloan.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.homeloan.exception.LoanException;
import com.lti.homeloan.dao.ITrackerDao;
import com.lti.homeloan.model.Tracker;

@Service
public class TrackerService implements ITrackerService{	
	@Autowired
	private ITrackerDao trackerDao ;
	@Override
	public Integer getStatusById(Tracker tracker) throws LoanException {
		return trackerDao.getStatusById(tracker);
	}
}
