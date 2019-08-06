package com.lti.homeloan.service;

import org.springframework.stereotype.Service;

import com.lti.homeloan.exception.CalculatorException;
import com.lti.homeloan.model.EligibiltyCalculator;

@Service
public class EligibilityCalculatorService implements IEligibilityCalculatorService {

	@Override
	public Double maxLoan(EligibiltyCalculator calc) throws CalculatorException {
		
		return 60*(0.6*calc.getmonthlyIncome());
	}

}
