package com.lti.homeloan.dao;

import java.util.List;

import com.lti.homeloan.exception.AdminException;
import com.lti.homeloan.model.Customer;
import com.lti.homeloan.model.Tracker;


public interface IAdminDao {

	public List<Customer> getCustomerList()throws AdminException;
	public Customer getCustomerData(Integer appId)throws AdminException;
	public Customer updateCustomer(Customer customer) throws AdminException;
	public Tracker approve(Tracker tracker) throws AdminException;
	public Tracker reject(Tracker tracker) throws AdminException;
}
