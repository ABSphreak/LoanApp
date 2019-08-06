package com.lti.homeloan.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.lti.homeloan.exception.LoanException;
import com.lti.homeloan.model.Loan;

@Repository
public class LoanDao implements ILoanDao{

	@PersistenceContext
	private EntityManager enitityManager;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Loan> getLoanList() throws LoanException {
		return enitityManager.createQuery("from Loan").getResultList();
	}

	@Override
	public Loan addLoanDetails(Loan loan) throws LoanException {
		enitityManager.persist(loan);
		return loan;
	}

}
