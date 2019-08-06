package com.lti.homeloan.dao;

import java.util.List;

import com.lti.homeloan.exception.LoanException;
import com.lti.homeloan.model.PropertyAndIncome;

public interface ICustPropertyAndIncomeDao {
	public List<PropertyAndIncome> getPropertyIncomeList()throws LoanException;
	public PropertyAndIncome addPropertyAndIncomeDetails(PropertyAndIncome propertyAndIncome)throws LoanException;
}
