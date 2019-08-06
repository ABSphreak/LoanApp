package com.lti.homeloan.dao;

import com.lti.homeloan.exception.LoanException;
import com.lti.homeloan.model.Tracker;

public interface ITrackerDao {
	public Integer getStatusById(Tracker tracker)throws LoanException;

}
