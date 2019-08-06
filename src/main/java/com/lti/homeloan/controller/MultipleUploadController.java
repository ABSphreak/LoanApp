package com.lti.homeloan.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.lti.homeloan.exception.FileStorageException;
import com.lti.homeloan.exception.LoanException;
import com.lti.homeloan.model.Customer;
import com.lti.homeloan.model.Document;
import com.lti.homeloan.model.Loan;
import com.lti.homeloan.model.PropertyAndIncome;
import com.lti.homeloan.service.ICustomerService;

@Controller
@RequestMapping(value = "/")
public class MultipleUploadController {

	/*@Autowired // autowire
	private IDocumentService documentService; // service obj
	@Autowired
	private ILoanService loanService;
	@Autowired
	private ICustPropertyAndIncomeService custPropertyAndIncomeService;*/
	@Autowired
	private ICustomerService customerService;

	/***************
	 * MUTIPLE FILE UPLOAD
	 ****************/

	@RequestMapping(value = "/uploadMultiple")
	public String uploadMultipleDocument(Model model) {

		// return model and view
		model.addAttribute("msg", "Document upload page"); // ${msg}
		model.addAttribute("today", LocalDate.now());
		// model object associated with name 'msg'
		System.err.println(" at uploadMultipleDocument controller :  showing Document upload page ");
		return "uploadPage";// view name which will be returned to
									// dispacherServlet
	}

	// System.out.println("addFarmer at controller : "+farmer.farm);
	// farmerService.addFarmer(farmer);

	@RequestMapping(value = "/uploadMultipleDocument", method = RequestMethod.POST)
	public String uploadMultipleDocument(@RequestParam(value = "files") MultipartFile[] files, Model model, HttpSession session)
			throws FileStorageException, LoanException {
		System.err.println(" ******Trying to upload files at uploadMultipleFiles controller :  " + files);
		String msg = "Document Not upload ";
		Document doc=null;
		Document document = null;
		List<Document> docList = new ArrayList<>();
		String UPLOADED_FOLDER = "D://backup//";
		Customer customer=	(Customer) session.getAttribute("customer");	
		for (int i = 0; i < files.length; i++) {
			MultipartFile file = files[i];
			try {
				File fileDest = new File(UPLOADED_FOLDER + file.getOriginalFilename());
				System.out.println("fileDest :" + fileDest);
				String a = file.getName();
				System.out.println("File Name : " + a);
				// do whatever you want with the MultipartFile
				if (file.isEmpty()) {
					model.addAttribute("msg", "Document name empty ");
					return "redirect:uploadMultipleDocument";
				}
				// read byte by byte using buffer
				System.out.println("\nReading byte from the file using buffer : " + file.getOriginalFilename()
						+ " \n Writing byte to the file using buffer : " + fileDest.getAbsolutePath());
				try (// read byte by byte using buffer
						BufferedInputStream bis = new BufferedInputStream(file.getInputStream());
						BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(fileDest));) {
					int b = 0;
					while ((b = bis.read()) != -1) {// read from buffer byte
													// byte till
													// EOF (-1)
						// write to buffer byte by byte
						// System.out.println(b);
						bos.write(b);
						bos.flush();// clear the cache
					}
				} catch (IOException e) {
					e.printStackTrace();
				}
			} catch (Exception e) {
				msg = "Failed to upload " + file.getOriginalFilename() + " " + e.getMessage();
			}
			
			// now create document for each file upload
			System.out.println();
			doc = new Document(); // obj of model class
			System.err.println("file zaeni"+file.getOriginalFilename());
			doc.setDocName(file.getOriginalFilename());
			doc.setDocPath("d:/backup/" + file.getOriginalFilename());
			//document = documentService.addCustomerDoc(doc);
			System.out.println("document at controller : " + document);
			doc.setCustomer(customer);
			docList.add(doc);
			msg = "Document upload success";
		} // end of for
			
		Loan loan =(Loan) session.getAttribute("loan");
		PropertyAndIncome propertyAndIncome=	(PropertyAndIncome) session.getAttribute("propertyAndIncome");
	/*	propertyAndIncome= this.custPropertyAndIncomeService.addPropertyAndIncomeDetails(propertyAndIncome);
		loan=this.loanService.addLoanDetails(loan);*/
		customer=this.customerService.addCustomerDetails(customer, loan, propertyAndIncome, docList);
		model.addAttribute("doc", doc);
		model.addAttribute("document", document);
		model.addAttribute("msg", msg);
		model.addAttribute("docList", docList);
		model.addAttribute("appId", customer.getAppId());

		return "uploadStatusPage"; // jsp page

	}

	

}