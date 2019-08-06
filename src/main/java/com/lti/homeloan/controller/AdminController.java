package com.lti.homeloan.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lti.homeloan.exception.AdminException;
import com.lti.homeloan.model.Customer;
import com.lti.homeloan.model.Document;
import com.lti.homeloan.model.Tracker;
import com.lti.homeloan.service.IAdminService;

@Controller
@RequestMapping(value = "admin")
public class AdminController {
	@Autowired
	private IAdminService adminService;

	@RequestMapping(value = "/verifycustomer/{appId}")
	public String getCustomerForm(@PathVariable("appId") Integer appId, Model model, HttpSession session)
			throws AdminException {
		Customer customer = adminService.getCustomerData(appId);
		session.setAttribute("appId", appId);
		System.out.println();
		System.out.println("In getCustomerForm controller " + customer);
	
		List<Document> docInfo = new ArrayList<Document>();
		for(int i=0;i<6;i++) {
		System.err.println(customer.getDocs().get(i));
		docInfo.add(customer.getDocs().get(i));
		}
		
		model.addAttribute("docInfo", docInfo);
		model.addAttribute("customer", customer);
		return "verifyForm";
	}

	@RequestMapping(value = "/updatecustomer/{appId}")
	public String updateCustomer(@PathVariable("appId") Integer appId, @ModelAttribute("customer") Customer customer,
			Model model) throws AdminException {
		customer = this.adminService.updateCustomer(customer);
		model.addAttribute("customer", customer);
		return "redirect:/admin/verifycustomer/" + appId;
	}

	@RequestMapping(value = "/approve/{appId}")
	public String approveStatus(@PathVariable("appId") Integer appId, Model model) throws AdminException {
		System.out.println("In approveStatus controller " + appId);
		Tracker tracker = new Tracker();
		tracker.setAppId(appId);
		tracker.setStatus(2);
		tracker = adminService.approve(tracker);
		model.addAttribute("appId", appId);
		int status = tracker.getStatus();
		model.addAttribute("status", status);
		System.err.println("STATUS : "+status);
		// return "approved";
		return "redirect:/admin/verifycustomer/" + appId;
	}

	@RequestMapping(value = "/reject/{appId}")
	public String rejectStatus(@PathVariable("appId") Integer appId, Model model) throws AdminException {
		Tracker tracker = new Tracker();
		tracker.setAppId(appId);
		tracker.setStatus(3);
		adminService.reject(tracker);
		model.addAttribute("appId", appId);
		int status = tracker.getStatus();
		model.addAttribute("status", status);
		System.err.println("STATUS : "+status);
		return "redirect:/admin/verifycustomer/" + appId;
	}

}
