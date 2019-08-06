
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="spring-form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Customer Save Page</title>
<style>
.error {
	color: #ff0000;
	font-style: italic;
	font-weight: bold;
}
</style>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<h1>Customer Form</h1>
	<hr>
	List Of Customers
	<hr>
	<c:url var="myaction" value="/admin/updatecustomer/${appId}"></c:url>
	<spring-form:form action="${myaction}" method="post"
		modelAttribute="customer">
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
			
			<tr>
				<td>${customer.appId}</td>
				<td><spring-form:input path="aadharNo"
						value="${customer.aadharNo}" /></td>
				<td><spring-form:input path="confirmPwd"
						value="${customer.confirmPwd}" /></td>
				<td><spring-form:input path="dob" value="${customer.dob}" /></td>
				<td><spring-form:input path="email" value="${customer.email }" /></td>
				<td><spring-form:input path="firstName"
						value="${customer.firstName}" /></td>
				<td><spring-form:input path="gender" value="${customer.gender}" /></td>
				<td><spring-form:input path="lastName"
						value="${customer.lastName}" /></td>
				<td><spring-form:input path="middleName"
						value="${customer.middleName}" /></td>
				<td><spring-form:input path="nationality"
						value="${customer.nationality}" /></td>
				<td><spring-form:input path="panNo" value="${customer.panNo}" /></td>
				<td><spring-form:input path="password"
						value="${customer.password}" /></td>
				<td><spring-form:input path="phoneNo"
						value="${customer.phoneNo}" /></td>
			</tr>
			
		</table>
		<hr>
		<hr>
	List Of LOAN BY Customers
	<hr>
		<table border="1">
			<tr>
				
				<th>Max Loan Grant</th>
				<th>Interest Rate</th>
				<th>Tenure</th>
				<th>Loan Amount</th>
			</tr>
			
			<tr>
				<td>${customer.loan.maxLoanGrant}</td>
				<td>8.50</td>
				<td>${customer.loan.tenure }</td>
				<td>${customer.loan.loanAmount }</td>
			</tr>
			
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
				<th>Organization Type</th>
				<th>Employer Name</th>
				<th>Income</th>
			</tr>
		
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
			<tr>
				<td><input type="submit" value="Update and Verify Customer" />
				</td>
			</tr>
			<tr>
				<td><a
					href="<c:url value='/admin/approve/${customer.appId}' />">Approve</a></td>
				<td><a href="<c:url value='/admin/reject/${customer.appId}' />">Reject</a>
				</td>
			</tr>
		</table>
	</spring-form:form>
</body>
</html>