 package com.lti.homeloan.dao;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.lti.homeloan.exception.LoanException;
import com.lti.homeloan.model.Tracker;

@Repository
public class TrackerDao implements  ITrackerDao {
	@PersistenceContext
	private EntityManager enitityManager;

	@SuppressWarnings("unchecked")
	@Override
	public Integer getStatusById(Tracker tracker) throws LoanException {
	Query query=  enitityManager.createQuery("select t.status from Tracker t where t.appId=:appId");
	query.setParameter("appId", tracker.getAppId());
	List<Integer> status=query.getResultList();
	System.err.println("Status"+status.get(0));
	return status.get(0);
	}

}
