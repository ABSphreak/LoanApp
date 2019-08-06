package com.lti.homeloan.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import com.lti.homeloan.exception.LoanException;
import com.lti.homeloan.model.PropertyAndIncome;

@Repository
public class CustPropertyAndIncomeDao implements ICustPropertyAndIncomeDao{

	@PersistenceContext
	private EntityManager enitityManager;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<PropertyAndIncome> getPropertyIncomeList() throws LoanException {		
		return enitityManager.createQuery("from PropertyAndIncome").getResultList();
		//return incomeList;
	}

	@Override
	public PropertyAndIncome addPropertyAndIncomeDetails(PropertyAndIncome propertyAndIncome) throws LoanException {
		 System.out.println("saveCustomerAction at Dao : "+propertyAndIncome);
		enitityManager.persist(propertyAndIncome);
		System.out.println("saveCustomerAction after persists Dao : "+propertyAndIncome);
		return propertyAndIncome;
	}
}
