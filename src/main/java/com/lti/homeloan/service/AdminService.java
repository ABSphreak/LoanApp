package com.lti.homeloan.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.homeloan.dao.IAdminDao;
import com.lti.homeloan.exception.AdminException;
import com.lti.homeloan.model.Customer;
import com.lti.homeloan.model.Tracker;

@Service
public class AdminService implements IAdminService {
	@Autowired
	private IAdminDao admindao;
	
	@Override
	@Transactional
	public List<Customer> getCustomerList() throws AdminException {
		return admindao.getCustomerList();
	}
	
	@Override
	@Transactional
	public Customer getCustomerData(Integer appId) throws AdminException {
		return admindao.getCustomerData(appId);
	}

	@Override
	@Transactional
	public Customer updateCustomer(Customer customer) throws AdminException {
		return admindao.updateCustomer(customer);
	}

	@Override
	@Transactional
	public Tracker approve(Tracker tracker) throws AdminException {
		// TODO Auto-generated method stub
		return admindao.approve(tracker);
	}

	@Override
	@Transactional
	public Tracker reject(Tracker tracker) throws AdminException {
		// TODO Auto-generated method stub
		return admindao.reject(tracker);
	}


}
