package com.lti.homeloan.dao;

import java.util.List;

import com.lti.homeloan.exception.LoginException;
import com.lti.homeloan.model.Login;
;

public interface ILoginDao {

	public List<Login> getLoginList()throws LoginException;
	public Login authenticateCustomer(Login login)throws LoginException;
	public String authenticateRole(Login login)throws LoginException;
}


