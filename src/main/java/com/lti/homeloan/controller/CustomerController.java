package com.lti.homeloan.controller;

import java.util.HashMap;
import java.util.Map;

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
import com.lti.homeloan.model.Customer;
import com.lti.homeloan.model.PropertyAndIncome;
import com.lti.homeloan.service.ICustomerService;

@Controller
@RequestMapping(value = "/")
public class CustomerController {
	@Autowired
	private ICustomerService customerService;

	@RequestMapping(value = "/showCustomerForm")
	public String showCustomerForm(Model model) throws LoanException {
		model.addAttribute("title", "Customer Form");
		model.addAttribute("customer", new Customer());
		return "customerForm";
	}

	public ICustomerService getCustomerService() {
		return customerService;
	}

	public void setCustomerService(ICustomerService customerService) {
		this.customerService = customerService;
	}

	@RequestMapping(value = "/checkCustSuccess", method = RequestMethod.POST)
	public String saveCustomerAction(@ModelAttribute("customer") @Valid Customer customer, BindingResult bindingResult,
			Model model,HttpSession session) throws LoanException {
		String viewName = "";
		System.out.println("saveCustomerAction at Controller : " + customer);
		if (bindingResult.hasErrors()) {
			viewName = "customerForm";
			return viewName;
		} else {
			// existing customer, call update
			//customer = this.customerService.addCustomerDetails(customer);
			/*List<Customer> customerList = customerService.getCustomerList();
			model.addAttribute("customerList", customerList);*/
			model.addAttribute("propertyAndIncome", new PropertyAndIncome());
			viewName = "incomeForm";
		}
		model.addAttribute("customer", customer);
		session.setAttribute("customer", customer);
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
	
	
	//FAQ Page
	@RequestMapping(value = "/faq")
	public String showFaq(Model model) throws LoanException {
		return "faq";
	}
	
	//About us Page
	@RequestMapping(value = "/about")
	public String showAbout(Model model) throws LoanException {
		return "about";
	}

}
