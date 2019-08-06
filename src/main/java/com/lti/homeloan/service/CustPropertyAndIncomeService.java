package com.lti.homeloan.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lti.homeloan.dao.ICustPropertyAndIncomeDao;
import com.lti.homeloan.exception.LoanException;
import com.lti.homeloan.model.PropertyAndIncome;

@Service
public class CustPropertyAndIncomeService implements ICustPropertyAndIncomeService{
	@Autowired
	private ICustPropertyAndIncomeDao custPropertyAndIncomeDao;

	@Override
	@Transactional
	public List<PropertyAndIncome> getPropertyIncomeList() throws LoanException {
		 /*List<PropertyAndIncome> incomeList=custPropertyAndIncomeDao.getPropertyIncomeList();
		 System.out.println("getUserList at Service : "+incomeList);
		return incomeList;*/
		return custPropertyAndIncomeDao.getPropertyIncomeList();
	}

	@Override
	@Transactional
	public PropertyAndIncome addPropertyAndIncomeDetails(PropertyAndIncome propertyAndIncome) throws LoanException {
		 System.out.println("saveCustomerAction at Service : "+propertyAndIncome);
		return custPropertyAndIncomeDao.addPropertyAndIncomeDetails(propertyAndIncome);
	}

	public ICustPropertyAndIncomeDao getCustPropertyAndIncomeDao() {
		return custPropertyAndIncomeDao;
	}

	public void setCustPropertyAndIncomeDao(ICustPropertyAndIncomeDao custPropertyAndIncomeDao) {
		this.custPropertyAndIncomeDao = custPropertyAndIncomeDao;
	}

}
