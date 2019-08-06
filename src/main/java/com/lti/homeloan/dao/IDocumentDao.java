package com.lti.homeloan.dao;

import com.lti.homeloan.exception.FileStorageException;
import com.lti.homeloan.model.Document;

public interface IDocumentDao {

	public Document addCustomerDoc(Document doc) throws FileStorageException;
}
