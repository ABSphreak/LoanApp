package com.lti.homeloan.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Repository;

import com.lti.homeloan.exception.LoanException;
import com.lti.homeloan.model.Customer;
import com.lti.homeloan.model.Document;
import com.lti.homeloan.model.Loan;
import com.lti.homeloan.model.Login;
import com.lti.homeloan.model.PropertyAndIncome;
import com.lti.homeloan.model.Tracker;

@Repository
public class CustomerDao implements ICustomerDao{

	@PersistenceContext
	private EntityManager enitityManager;
	@SuppressWarnings("unchecked")
	@Override
	public List<Customer> getCustomerList(String username, HttpSession session) throws LoanException {
		/*System.err.println("HELOOOOOOO"+session.getAttribute("username"));*/
		Query query= enitityManager.createQuery("from Customer where appId = (select appId from Customer where email=:username)");
		query.setParameter("username",session.getAttribute("username"));
		System.out.println(query.getResultList());
		return query.getResultList();
	}

	@Override
	public Customer addCustomerDetails(Customer customer,Loan loan, PropertyAndIncome propertyAndIncome, List<Document> document)throws LoanException {
		System.out.println("saveCustomerAction at Dao : "+customer);
		customer.setPropertyAndIncome(propertyAndIncome);
		customer.setDocs(document);
		customer.setLoan(loan);
		loan.setCustomer(customer);
		propertyAndIncome.setCustomer(customer);
		Tracker tracker = new Tracker();
		Login login = new Login();
		login.setUsername(customer.getEmail());
		login.setPassword(customer.getPassword());
		login.setRole("user");
		enitityManager.persist(login);
	/*	loan.setStatus(1);*/
		enitityManager.persist(customer);
		
		tracker.setAppId(customer.getAppId());
		tracker.setStatus(1);
		enitityManager.persist(tracker);
		System.out.println("saveCustomerAction after persists Dao customer : "+customer);
		System.out.println("saveCustomerAction after persists Dao login : "+login);
		System.out.println("saveCustomerAction after persists Dao tracker : "+tracker);
		return customer;
	}

}
