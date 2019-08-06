package com.lti.homeloan.controller;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.lti.homeloan.exception.LoanException;
import com.lti.homeloan.model.Tracker;
import com.lti.homeloan.service.ITrackerService;

@Controller
@RequestMapping(value="/")
public class TrackerController {
	
	@Autowired
	private ITrackerService trackerService;
	
	@RequestMapping(value="/showTrackerPage")
	public String showTrackerPage(Model model) {
		model.addAttribute("tracker", new Tracker());
		model.addAttribute("status"," ");
		return "trackerPage";
	}
	
	@RequestMapping(value="/getStatus", method=RequestMethod.POST)
	public String showStatus(
			@ModelAttribute("tracker") @Valid Tracker tracker,
			BindingResult bindingResult, Model model) throws LoanException {
				String viewName="";
				model.addAttribute("status",trackerService.getStatusById(tracker));
				System.err.println("STATUS "+trackerService.getStatusById(tracker));
				viewName="trackerPage";
				return viewName;
	}
}
