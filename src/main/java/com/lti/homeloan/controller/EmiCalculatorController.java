package com.lti.homeloan.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lti.homeloan.model.EligibiltyCalculator;
import com.lti.homeloan.service.IEligibilityCalculatorService;
import com.lti.homeloan.exception.CalculatorException;
import com.lti.homeloan.model.EmiCalculator;
import com.lti.homeloan.service.IEmiCalculatorService;



@Controller
@RequestMapping(value="/")
public class EmiCalculatorController {

	@Autowired
	private IEmiCalculatorService emiCalculatorService;
	@Autowired
	private IEligibilityCalculatorService eligibilityCalculatorService;
	
	@RequestMapping(value="/showcalculatorForm")
	public String calculatorForm( Model model) throws CalculatorException {
		model.addAttribute("calvalues", new EmiCalculator());
		return "emiCalculator";
	}
		
	@RequestMapping(value="/calculateEmi", method=RequestMethod.POST)
	public String calculateEmi(
			@ModelAttribute("calvalues") @Valid EmiCalculator emiCalculator,
			BindingResult bindingResult, Model model) throws CalculatorException {
				String viewName="";
				/*if(bindingResult.hasErrors()) {
					viewName="eligibiltyCalculatorForm";
				}				*/				
				model.addAttribute("emi", emiCalculatorService.calculatemi(emiCalculator));
				viewName="emiCalculator";
				return viewName;
	}
	
	@RequestMapping(value="/showEligibilityCalculator")
	public String getCalculatorPage(Model model) {
		model.addAttribute("eligibiltyCalculator", new EligibiltyCalculator());
		model.addAttribute("result", 0);
		model.addAttribute("eligibility", "False");
		return "eligibiltyCalculator";
	}
	
	
	@RequestMapping(value="/calculateEligibility", method=RequestMethod.POST)
	public String calculateMaxLoan(
			@ModelAttribute("eligibiltyCalculator") @Valid EligibiltyCalculator eligibiltyCalculator,
			BindingResult bindingResult, Model model) throws CalculatorException {
				String viewName="";
				model.addAttribute("result", eligibilityCalculatorService.maxLoan(eligibiltyCalculator));
				Double result=eligibilityCalculatorService.maxLoan(eligibiltyCalculator);
				if(result<=eligibiltyCalculator.getmonthlyIncome())
				{
					model.addAttribute("eligibility", "NO");
					viewName="eligibiltyCalculator";
				}
				else
				{
					model.addAttribute("eligibility", "YES");
					viewName="eligibiltyCalculator";
				}
				return viewName;
	}
}


	
	
