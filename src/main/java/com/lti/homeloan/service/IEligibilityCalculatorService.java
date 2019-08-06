package com.lti.homeloan.service;

import com.lti.homeloan.exception.CalculatorException;
import com.lti.homeloan.model.EligibiltyCalculator;

public interface IEligibilityCalculatorService {

		public Double maxLoan(EligibiltyCalculator calc) throws CalculatorException;
	
}
