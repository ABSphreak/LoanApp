package com.lti.homeloan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lti.homeloan.dao.ILoginDao;
import com.lti.homeloan.exception.LoginException;
import com.lti.homeloan.model.Login;

@Service
public class LoginService implements ILoginService {
	
	@Autowired
	public ILoginDao loginDao;

	@Override
	@Transactional
	public List<Login> getLoginList() throws LoginException {
		// TODO Auto-generated method stub
		return loginDao.getLoginList();
	}

	@Override
	@Transactional
	public Login authenticateCustomer(Login login) throws LoginException {
		// TODO Auto-generated method stub
		System.out.println("at service: "+loginDao.authenticateCustomer(login));
		return loginDao.authenticateCustomer(login);
		//return login;
	}

	@Override
	@Transactional
	public String authenticateRole(Login login) throws LoginException {
		// TODO Auto-generated method stub
		
		return loginDao.authenticateRole(login);
	}


}
