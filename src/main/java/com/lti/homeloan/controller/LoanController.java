package com.lti.homeloan.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lti.homeloan.exception.LoanException;
import com.lti.homeloan.model.Loan;
import com.lti.homeloan.service.ILoanService;

@Controller
public class LoanController {
	@Autowired
	private ILoanService loanService;
	/*@Autowired
	private ICustPropertyAndIncomeService custPropertyAndIncomeService;
	@Autowired
	private ICustomerService customerService;*/
	
	@RequestMapping(value="/showLoanPage")
	public String showLoanForm(Model model) throws LoanException {
		model.addAttribute("title", "Loan Form");
		model.addAttribute("loan", new Loan());
		List<Loan> loanList = loanService.getLoanList();
	   model.addAttribute("loanList", loanList);
		System.out.println("Loan list at controller : " + loanList);
		return "loanForm";
	}
	
	@RequestMapping(value = "/checkLoanSuccess", method = RequestMethod.POST)
	public String saveCustomerAction(@ModelAttribute("loan") @Valid Loan loan, BindingResult bindingResult,
			Model model,HttpSession session) throws LoanException {
		String viewName = "";
		if (bindingResult.hasErrors()) {
			System.err.println("ERROR IN LOAN CONTROLLER : "+bindingResult);
			viewName = "loanForm";
			return viewName;
		} else {
			// existing customer, call update
		//	loan = this.loanService.addLoanDetails(loan);
			/*Customer customer=	(Customer) session.getAttribute("customer");
			customer=this.customerService.addCustomerDetails(customer);
			PropertyAndIncome propertyAndIncome=	(PropertyAndIncome) session.getAttribute("propertyAndIncome");
			propertyAndIncome= this.custPropertyAndIncomeService.addPropertyAndIncomeDetails(propertyAndIncome);
*/			
		/*	List<Loan> loanList = loanService.getLoanList();
			model.addAttribute("loanList", loanList);
			viewName = "loanSuccessPage";*/
			
			//model.addAttribute("document", new Document());
			viewName = "uploadPage";
		}
		/*model.addAttribute("loan", loan);
		Customer customer=	(Customer) session.getAttribute("customer");		
		PropertyAndIncome propertyAndIncome=	(PropertyAndIncome) session.getAttribute("propertyAndIncome");
		propertyAndIncome= this.custPropertyAndIncomeService.addPropertyAndIncomeDetails(propertyAndIncome);
		customer=this.customerService.addCustomerDetails(customer,loan,propertyAndIncome);*/
		model.addAttribute("loan", loan);
		session.setAttribute("loan", loan);
		return viewName;
	}
}
