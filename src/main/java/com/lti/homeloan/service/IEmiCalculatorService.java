package com.lti.homeloan.service;

import com.lti.homeloan.exception.CalculatorException;
import com.lti.homeloan.model.EmiCalculator;

public interface IEmiCalculatorService {

	public Double calculatemi(EmiCalculator emicalculator) throws CalculatorException;
}
