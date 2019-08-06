package com.lti.homeloan.service;

import com.lti.homeloan.exception.FileStorageException;
import com.lti.homeloan.model.Document;

public interface IDocumentService {
	 public Document addCustomerDoc(Document document) throws FileStorageException;
}
