 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="spring-form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success Page</title>
</head>
<body bgcolor="lightgreen">
<h1>${msg}</h1>
<hr>
| <a href="${pageContext.request.contextPath }/showLogin"> Logout</a> 
| <a href="${pageContext.request.contextPath }/showTrackerPage"> Track Status</a> 
<hr>
Welcome , ${loginObj.username }
<h1>Customer Form</h1>
	<hr>
	List Of Customers
	<hr>
	<table border="1">
		<tr>
			<th>App ID</th>
			<th>Aadhar Number</th>
			<th>Confirm Password</th>
			<th>Date Of Birth</th>
			<th>Email</th>
			<th>First Name</th>
			<th>Gender</th>
			<th>Last Name</th>
			<th>Middle Name</th>
			<th>Nationality</th>
			<th>PAN Number</th>
			<th>Password</th>
			<th>Phone Number</th>
	</tr>
		<c:forEach items="${customerList}" var="customer">
			<tr>
				<td>${customer.appId}</td>
				<td>${customer.aadharNo}</td>
				<td>${customer.confirmPwd }</td>
				<td>${customer.dob }"</td>
				<td>${customer.email }</td>
				<td>${customer.firstName }</td>
				<td>${customer.gender }</td>
				<td>${customer.lastName }</td>
				<td>${customer.middleName }</td>
				<td>${customer.nationality }</td>
				<td>${customer.panNo }</td>
				<td>${customer.password }</td>
				<td>${customer.phoneNo }</td>
			</tr>
	</c:forEach>
	</table>
	<hr>
	<hr>
	List Of LOAN BY Customers
	<hr>
	<table border="1">
		<tr>
			<th>Loan ID</th>
			<th>Max Loan Grant</th>
			<th>Interest Rate</th>
			<th>Tenure</th>
			<th>Loan Amount</th>
		</tr>
		<c:forEach items="${customerList}" var="customer">
		<tr>
			<td>${customer.loan.loanId}</td>
			<td>${customer.loan.maxLoanGrant}</td>
			<td>8.50</td>
			<td>${customer.loan.tenure }</td>
			<td>${customer.loan.loanAmount }</td>
			</tr>
	</c:forEach>
	</table>
	
	<hr>
	List Of Property and Income of Customers
	<hr>
	<table border="1">
		<tr>
			<th>Property and Loan ID</th>
			<th>Property Location</th>
			<th>Property Name</th>
			<th>Property Estimated Amount</th>
			<th>Type Of Employment</th>
			<th>Retirement Age</th>
			<th>Organisation Type</th>
			<th>Employer Name</th>
			<th>Income</th>
		</tr>
		<c:forEach items="${customerList}" var="customer">
		<tr>
			<td>${customer.propertyAndIncome.piId}</td>
			<td>${customer.propertyAndIncome.propertyLoc}</td>
			<td>${customer.propertyAndIncome.propertyName }</td>
			<td>${customer.propertyAndIncome.propertyEstimatedAmount }</td>
			<td>${customer.propertyAndIncome.typeOfEmployment}</td>
			<td>${customer.propertyAndIncome.retirementAge}</td>
			<td>${customer.propertyAndIncome.orgType}</td>
			<td>${customer.propertyAndIncome.employerName}</td>
			<td>${customer.propertyAndIncome.income}</td>
			</tr>
	</c:forEach>
	</table>

</body>
</html>