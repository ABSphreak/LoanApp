package com.lti.homeloan.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.lti.homeloan.exception.LoginException;
import com.lti.homeloan.model.Login;

/*import scala.annotation.meta.setter;*/
	@Repository
	public class LoginDao implements ILoginDao {
	 
	@PersistenceContext
	private EntityManager enitityManager;
	@SuppressWarnings("unchecked")
	@Override
	public List<Login> getLoginList() throws LoginException {
		// TODO Auto-generated method stub
		return enitityManager.createQuery("from Login").getResultList();
	}

	//Role authentication
	@Override
	public String authenticateRole(Login login) throws LoginException {
	
		String role="INVALID";
		
		if(login.getRole().equals("admin")){
			role=login.getRole();
		}
		if(login.getRole().equals("user")){
			role=login.getRole();
		}

		return role;
}
	
	
	// login credential mapping
	@SuppressWarnings("unchecked")
	@Override
	public Login  authenticateCustomer(Login login) throws LoginException {
		
		Query query = enitityManager.createQuery("from Login where username=:username and password=:password and role=:role");
		query.setParameter("username", login.getUsername());
		query.setParameter("password", login.getPassword());
		query.setParameter("role", login.getRole());
		
		System.out.println("USERRRR ISSS : "+login.getUsername());
		System.out.println("PASS ISSS: "+login.getPassword());
		query.setMaxResults(1);
		/*if(login.getUsername().equals("admin")&&login.getPassword().equals("admin"))*/
		List<Login> results= query.getResultList();
		System.out.println("at dao :"+results);
		if(results.isEmpty()){
			System.out.println("EMPTYy");
			return null;
		}
		else{
			System.out.println("INn");
			authenticateRole(login);
			return results.get(0);
		}
	}
}

/*	Login results= (Login) query.getSingleResult();
		System.out.println("at dao :"+results);
		return results==null ? null:results;*/
