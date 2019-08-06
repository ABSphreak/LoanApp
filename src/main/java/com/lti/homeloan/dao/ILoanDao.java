package com.lti.homeloan.dao;

import java.util.List;

import com.lti.homeloan.exception.LoanException;
import com.lti.homeloan.model.Loan;

public interface ILoanDao {
	public List<Loan> getLoanList()throws LoanException;
	public Loan addLoanDetails(Loan loan)throws LoanException;
}
