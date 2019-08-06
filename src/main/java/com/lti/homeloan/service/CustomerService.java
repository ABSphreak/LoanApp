 package com.lti.homeloan.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lti.homeloan.dao.ICustomerDao;
import com.lti.homeloan.exception.LoanException;
import com.lti.homeloan.model.Customer;
import com.lti.homeloan.model.Document;
import com.lti.homeloan.model.Loan;
import com.lti.homeloan.model.PropertyAndIncome;

@Service
public class CustomerService implements ICustomerService{
	@Autowired
	private ICustomerDao customerDao;

	@Override
	@Transactional
	public List<Customer> getCustomerList(String username, HttpSession session) throws LoanException {
		return customerDao.getCustomerList(username, session);
	}

	@Override
	@Transactional
	public Customer addCustomerDetails(Customer customer,Loan loan, PropertyAndIncome propertyAndIncome, List<Document> document)throws LoanException{
		return customerDao.addCustomerDetails(customer,loan,propertyAndIncome,document);
	}

}
