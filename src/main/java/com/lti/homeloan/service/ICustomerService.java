package com.lti.homeloan.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.lti.homeloan.exception.LoanException;
import com.lti.homeloan.model.Customer;
import com.lti.homeloan.model.Document;
import com.lti.homeloan.model.Loan;
import com.lti.homeloan.model.PropertyAndIncome;


public interface ICustomerService {
	public List<Customer> getCustomerList(String username, HttpSession session) throws LoanException;
	public Customer addCustomerDetails(Customer customer,Loan loan, PropertyAndIncome propertyAndIncome,  List<Document> document)throws LoanException;
}

