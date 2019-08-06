package com.lti.homeloan.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lti.homeloan.exception.AdminException;
import com.lti.homeloan.exception.LoanException;
import com.lti.homeloan.exception.LoginException;
import com.lti.homeloan.model.Customer;
import com.lti.homeloan.model.Login;
import com.lti.homeloan.service.IAdminService;
import com.lti.homeloan.service.ICustomerService;
import com.lti.homeloan.service.ILoginService;

@Controller
@RequestMapping(value = "/")
public class LoginController {
	@Autowired
	private ILoginService loginService;
	@Autowired
	private IAdminService adminService;
	@Autowired
	private ICustomerService customerService;

	@RequestMapping(value = "showLogin", method = RequestMethod.GET)
	public ModelAndView getLoginPage() {
		Login loginObj = new Login();
		String viewName = "loginPage";
		String modelName = "loginObj";
		return new ModelAndView(viewName, modelName, loginObj);
	}

	@RequestMapping(value = "checkLogin", method = RequestMethod.POST)
	public String checkLogin(@ModelAttribute(value = "loginObj") @Validated Login loginObj, BindingResult bindingResult,
			Model model, HttpSession session) throws LoginException, AdminException {
		String viewName = "";
		if (bindingResult.hasErrors()) {// validations
			model.addAttribute("msg", "Login Failed!");
			model.addAttribute("loginObj", new Login());
			viewName = "redirect:showLogin";
			// prefix redirect is used to redirect from one controller method to the another
			// method
			}

		Login loginResult = this.loginService.authenticateCustomer(loginObj);

		if (loginResult == null) {

			model.addAttribute("loginObj", new Login());
			model.addAttribute("msg", "Login Falied Invalid Credentials!");
			viewName = "loginPage";

		} else {

			model.addAttribute("loginObj", loginObj);
			model.addAttribute("msg", "Login Successful!");
			if (loginObj.getRole().equals("admin")) {
				model.addAttribute("customer", new Customer());
				List<Customer> idList = adminService.getCustomerList();
				model.addAttribute("idList", idList);
				System.out.println("Usernname: "+loginObj.getUsername());
				//session.setAttribute("username", loginObj.getUsername());
				viewName = "adminSucess";
			}
			if (loginObj.getRole().equals("user")) {
				session.setAttribute("username",loginObj.getUsername());
				viewName = "redirect:customerDetails";
			}
		}
		return viewName;
	}
	
	@RequestMapping(value = "/logout")
	public String logout(Model model, HttpSession session) throws LoanException{
		session.removeAttribute("username");
		session.invalidate();
		return "/homePage";
	}
	
	@RequestMapping(value="/customerDetails")
	public String showStatus( Model model, HttpSession session) throws LoanException {
				String viewName="";
				String username=(String) session.getAttribute("username");
				/*System.out.println("HELOOOOOOO"+username);*/
				model.addAttribute("customer", new Customer());
				List<Customer> customerList=customerService.getCustomerList(username,session);
				customerList.forEach((data)->System.out.println(data));
				model.addAttribute("customerList",customerList);
				System.err.println("HELOOOOOOO"+customerList);
				viewName="successPage";
				return viewName;
	}
}
