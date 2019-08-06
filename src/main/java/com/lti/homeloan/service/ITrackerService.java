package com.lti.homeloan.service;

import com.lti.homeloan.exception.LoanException;
import com.lti.homeloan.model.Tracker;

public interface ITrackerService {
	
	public Integer getStatusById(Tracker tracker)throws LoanException;

}
