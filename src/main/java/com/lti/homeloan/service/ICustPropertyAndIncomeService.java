package com.lti.homeloan.service;

import java.util.List;

import com.lti.homeloan.exception.LoanException;
import com.lti.homeloan.model.PropertyAndIncome;

public interface ICustPropertyAndIncomeService {
	public List<PropertyAndIncome> getPropertyIncomeList()throws LoanException;
	public PropertyAndIncome addPropertyAndIncomeDetails(PropertyAndIncome propertyAndIncome)throws LoanException;
}
