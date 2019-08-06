/**
 * 
 */
package com.lti.homeloan.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lti.homeloan.exception.LoanException;
import com.lti.homeloan.model.Loan;
import com.lti.homeloan.model.PropertyAndIncome;

@Controller
@RequestMapping(value = "/")
public class IncomeController {
	/*@Autowired
	private ICustPropertyAndIncomeService custPropertyAndIncomeService;*/

	@RequestMapping(value = "/")
	public String showHomePage(Model model) {
		model.addAttribute("title", "Loan Home Page");
		return "homePage";
	}

	@RequestMapping(value = "/home")
	public String showHomePage1(Model model) {
		model.addAttribute("title", "Loan Home Page");
		return "homePage";
	}

	@RequestMapping(value = "/showIncomeForm")
	public String showIncomeForm(Model model) throws LoanException {
		model.addAttribute("title", "Property and Income Page");
		model.addAttribute("propertyAndIncome", new PropertyAndIncome());
		return "incomeForm";
	}
	
	@RequestMapping(value="/checkSuccess", method=RequestMethod.POST)
	public String saveCustomerAction(@ModelAttribute("propertyAndIncome")
	@Valid PropertyAndIncome propertyAndIncome, BindingResult bindingResult, Model model,HttpSession session) throws LoanException {
		String viewName="";
		 System.out.println("saveCustomerAction at Controller : "+propertyAndIncome);
		if (bindingResult.hasErrors()) {
			viewName="incomeForm";
			return viewName;
		}
		else{
			//existing customer, call update
			//propertyAndIncome=this.custPropertyAndIncomeService.addPropertyAndIncomeDetails(propertyAndIncome);
			/*List<PropertyAndIncome> incomeList = custPropertyAndIncomeService.getPropertyIncomeList();
			model.addAttribute("incomeList", incomeList);*/
			model.addAttribute("loan", new Loan());	
			viewName="loanForm";
		}
		model.addAttribute("propertyAndIncome", propertyAndIncome);		
		Long income= propertyAndIncome.getIncome();
		Double maxGrantAmount = 60*(0.6*income);
		model.addAttribute("maxGrantAmount",maxGrantAmount);
		session.setAttribute("propertyAndIncome", propertyAndIncome);
		return viewName;
	}
	
	@ModelAttribute("typeOfEmpList")
	   public Map<String, String> getTypeOfEmpList() {
	      Map<String, String> typeOfEmpList = new HashMap<String, String>();
	      typeOfEmpList.put("self", "self");
	      typeOfEmpList.put("salaried", "salaried");
	      return typeOfEmpList;
	   }
	
	@ModelAttribute("typeOfOrgList")
	   public Map<String, String> getTypeOfOrgList() {
	      Map<String, String> typeOfOrgList = new HashMap<String, String>();
	      typeOfOrgList.put("government", "government");
	      typeOfOrgList.put("service", "service");
	      typeOfOrgList.put("private", "private");
	      return typeOfOrgList;
	   }

/*	public ICustPropertyAndIncomeService getCustPropertyAndIncomeService() {
		return custPropertyAndIncomeService;
	}

	public void setCustPropertyAndIncomeService(ICustPropertyAndIncomeService custPropertyAndIncomeService) {
		this.custPropertyAndIncomeService = custPropertyAndIncomeService;
	}*/

}
