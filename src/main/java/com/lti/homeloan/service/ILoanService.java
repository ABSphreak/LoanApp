package com.lti.homeloan.service;

import java.util.List;

import com.lti.homeloan.exception.LoanException;
import com.lti.homeloan.model.Loan;

public interface ILoanService {
	public List<Loan> getLoanList()throws LoanException;
	public Loan addLoanDetails(Loan loan)throws LoanException;
}
