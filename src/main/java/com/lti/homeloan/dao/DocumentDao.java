package com.lti.homeloan.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.lti.homeloan.exception.FileStorageException;
import com.lti.homeloan.model.Document;

@Repository
public class DocumentDao implements IDocumentDao{

	@PersistenceContext
	private EntityManager entityManager;
	
	@Override
	public Document addCustomerDoc(Document  doc) throws FileStorageException {
		entityManager.persist(doc);
			return doc;
		}
}

