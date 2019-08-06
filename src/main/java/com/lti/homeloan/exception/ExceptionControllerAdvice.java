package com.lti.homeloan.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

/*
 * This class simply define a @ControllerAdvice and 
 * a method with @ExceptionHandler. 
 * This method will be called whenever an 
 * unhandled exception occurs. and will display exception.jsp
 */
@ControllerAdvice
public class ExceptionControllerAdvice {

	@ExceptionHandler(Exception.class)
	public ModelAndView handleAllExceptions(Exception e) {

		ModelAndView mav = new ModelAndView("exception");// view name
		mav.addObject("name", e.getClass().getSimpleName());// model for ex name
		mav.addObject("message", e.getMessage());// model for ex msg
		return mav;
	}
	@ExceptionHandler(CustomException.class)
	public ModelAndView handleCustomException(Exception e) {

		ModelAndView mav = new ModelAndView("error");// view name
		mav.addObject("name", e.getClass().getSimpleName());// model for ex name
		mav.addObject("message", e.getMessage());// model for ex msg
		return mav;
	}
	//replace the below commented line with your own custom exception class
	@ExceptionHandler(AdminException.class)
	public ModelAndView handleAdminException(Exception e) {


		ModelAndView mav = new ModelAndView("error");// view name
		mav.addObject("name", e.getClass().getSimpleName());// model for ex name
		mav.addObject("message", e.getMessage());// model for ex msg
		return mav;
	}
	@ExceptionHandler(CalculatorException.class)
	public ModelAndView handleCalculatorException(Exception e) {


		ModelAndView mav = new ModelAndView("error");// view name
		mav.addObject("name", e.getClass().getSimpleName());// model for ex name
		mav.addObject("message", e.getMessage());// model for ex msg
		return mav;
	}
	@ExceptionHandler(FileStorageException.class)
	public ModelAndView handleFileStorageException(Exception e) {


		ModelAndView mav = new ModelAndView("error");// view name
		mav.addObject("name", e.getClass().getSimpleName());// model for ex name
		mav.addObject("message", e.getMessage());// model for ex msg
		return mav;
	}
	@ExceptionHandler(LoanException.class)
	public ModelAndView handleLoanException(Exception e) {


		ModelAndView mav = new ModelAndView("error");// view name
		mav.addObject("name", e.getClass().getSimpleName());// model for ex name
		mav.addObject("message", e.getMessage());// model for ex msg
		return mav;
	}
	@ExceptionHandler(LoginException.class)
	public ModelAndView handleLoginException(Exception e) {


		ModelAndView mav = new ModelAndView("error");// view name
		mav.addObject("name", e.getClass().getSimpleName());// model for ex name
		mav.addObject("message", e.getMessage());// model for ex msg
		return mav;
	}
	
	
}