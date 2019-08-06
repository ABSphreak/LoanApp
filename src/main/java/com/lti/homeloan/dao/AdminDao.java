package com.lti.homeloan.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.lti.homeloan.exception.AdminException;
import com.lti.homeloan.model.Customer;
import com.lti.homeloan.model.Tracker;

@Repository
public class AdminDao implements IAdminDao {
	@PersistenceContext
	private EntityManager enitityManager;
	@Override
	public List<Customer> getCustomerList() throws AdminException {
		@SuppressWarnings("unchecked")
		List<Customer> custList = enitityManager.createQuery("select c.appId from Customer c").getResultList();
		System.out.println("\n\n"+custList+"\n\n");
		return custList;
	}
	
	@Override
	public Customer getCustomerData(Integer appId) throws AdminException {
		return enitityManager.find(Customer.class, appId);
	}

	@Override
	public Customer updateCustomer(Customer customer) throws AdminException {
		/*enitityManager.merge(customer);*/
		return enitityManager.merge(customer);
	}

	@Override
	public Tracker approve(Tracker tracker) throws AdminException {
		
		System.err.println("approve at DAO tracker: "+tracker);
		return enitityManager.merge(tracker);
		
	}

	@Override
	public Tracker reject(
			Tracker tracker) throws AdminException {
		System.err.println("reject at DAO tracker: "+tracker);
		return enitityManager.merge(tracker);
		
	}
}
