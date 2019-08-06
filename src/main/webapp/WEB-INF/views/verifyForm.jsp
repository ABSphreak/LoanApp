<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="spring-form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<!-- Material Design Bootstrap -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.6/css/mdb.min.css" rel="stylesheet">
	<script src="https://kit.fontawesome.com/7ff9ef7fe4.js"></script>
    <script type="text/javascript" src="js/main.js"></script>  
    <title>LOAN APPLICATION</title>
</head>
<body>
 
<%@ include file="navigation-logout.jsp" %>

<!-- CONTAINER FIXES THE WIDTH TO 6 COLUMNS AFTER MEDIUM SCREEN SIZE -->
	<div class="container col-md-6 mt-4">
		<p class="h4">Applicant ID : ${customer.appId}</p>
		${status}
		<c:if test="${status == 2}">
			<div class="alert alert-warning alert-dismissible fade show" role="alert">
			  <strong>Holy guacamole!</strong> You should check in on some of those fields below.
			  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
			    <span aria-hidden="true">&times;</span>
			  </button>
			</div>
		</c:if>
		<c:if test="">
		
		</c:if>
		
		
		<c:url var="myaction" value="/admin/updatecustomer/${appId}"></c:url>
		<spring-form:form action="${myaction}" method="post"
			modelAttribute="customer"
			class="border border-dark rounded px-3 py-3">
			<fieldset>
				<legend>Personal Details</legend>
				<div class="form-group row">
					<label for="aadharNo" class="col-sm-2 col-form-label">Aadhar
						Number</label>
					<div class="col-sm-10">
						<spring-form:input path="aadharNo" class="form-control"
							value="${customer.aadharNo}" id="aadharNo"
							placeholder="Aadhar Number" />
					</div>
				</div>
				<div class="form-group row">
					<label for="password" class="col-sm-2 col-form-label">Password</label>
					<div class="col-sm-10">
						<spring-form:input path="password" value="${customer.password}"
							class="form-control" id="password" placeholder="Password" />
					</div>
				</div>
				<div class="form-group row">
					<label for="confirmPwd" class="col-sm-2 col-form-label">Confirm Password</label>
					<div class="col-sm-10">
						<spring-form:input path="confirmPwd" value="${customer.confirmPwd}"
							class="form-control" id="confirmPwd" placeholder="Password" />
					</div>
				</div>
				<div class="form-group row">
					<label for="dob" class="col-sm-2 col-form-label">Date Of
						Birth</label>
					<div class="col-sm-10">
						<spring-form:input path="dob" class="form-control"
							value="${customer.dob}" id="dob" placeholder="Date Of Birth" />
					</div>
				</div>
				<div class="form-group row">
					<label for="panNo" class="col-sm-2 col-form-label">PAN
						Number</label>
					<div class="col-sm-10">
						<spring-form:input path="panNo" value="${customer.panNo}"
							class="form-control" id="panNo" placeholder="PAN Number"/>
					</div>
				</div>
				<div class="form-group row">
					<label for="email" class="col-sm-2 col-form-label">Email</label>
					<div class="col-sm-10">
						<spring-form:input path="email" value="${customer.email}"
							class="form-control" id="email" placeholder="Email" />
					</div>
				</div>
				<div class="form-group row">
					<label for="firstName" class="col-sm-2 col-form-label">First
						Name</label>
					<div class="col-sm-10">
						<spring-form:input path="firstName" value="${customer.firstName}"
							class="form-control" id="firstName" placeholder="First Name" />
					</div>
				</div>
				<div class="form-group row">
					<label for="middleName" class="col-sm-2 col-form-label">Middle
						Name</label>
					<div class="col-sm-10">
						<spring-form:input path="middleName"
							value="${customer.middleName}" class="form-control"
							id="middleName" placeholder="Middle Name" />
					</div>
				</div>
				<div class="form-group row">
					<label for="lastName" class="col-sm-2 col-form-label">Last
						Name</label>
					<div class="col-sm-10">
						<spring-form:input path="lastName" value="${customer.lastName}"
							class="form-control" id="lastName" placeholder="Last Name" />
					</div>
				</div>
				<div class="form-group row">
					<label for="gender" class="col-sm-2 col-form-label">Gender</label>
					<div class="col-sm-10">
						<spring-form:input path="gender" value="${customer.gender}"
							class="form-control" id="gender" placeholder="Gender" />
					</div>
				</div>
				<div class="form-group row">
					<label for="nationality" class="col-sm-2 col-form-label">Nationality</label>
					<div class="col-sm-10">
						<spring-form:input path="nationality"
							value="${customer.nationality}" class="form-control"
							id="nationality" placeholder="Nationality" />
					</div>
				</div>
				<div class="form-group row">
					<label for="phoneNo" class="col-sm-2 col-form-label">Phone
						Number</label>
					<div class="col-sm-10">
						<spring-form:input path="phoneNo" value="${customer.phoneNo}"
							class="form-control" id="phoneNo" placeholder="Phone Number" />
					</div>
				</div>
			</fieldset>

			<fieldset>
				<legend>Financial Details</legend>
				${customer.propertyAndIncome.piId}
				<div class="form-group row">
					<label for="propertyLoc" class="col-sm-2 col-form-label">Property
						Location</label>
					<div class="col-sm-10">
						<spring-form:input path="propertyAndIncome.propertyLoc"
							value="${customer.propertyAndIncome.propertyLoc}"
							class="form-control" id="propertyLoc"
							placeholder="Property Location" />
					</div>
				</div>
				<div class="form-group row">
					<label for="propertyName" class="col-sm-2 col-form-label">Property
						Name</label>
					<div class="col-sm-10">
						<spring-form:input path="propertyAndIncome.propertyName"
							value="${customer.propertyAndIncome.propertyName}"
							class="form-control" id="propertyName"
							placeholder="Property Name" />
					</div>
				</div>
				<div class="form-group row">
					<label for="propertyEstimatedAmount"
						class="col-sm-2 col-form-label">Property Estimated Amount</label>
					<div class="col-sm-10">
						<spring-form:input
							path="propertyAndIncome.propertyEstimatedAmount"
							value="${customer.propertyAndIncome.propertyEstimatedAmount}"
							class="form-control" id="propertyEstimatedAmount"
							placeholder="Property Estimated Amount" />
					</div>
				</div>
				<div class="form-group row">
					<label for="typeOfEmployment" class="col-sm-2 col-form-label">
						Type Of Employment</label>
					<div class="col-sm-10">
						<spring-form:input path="propertyAndIncome.typeOfEmployment"
							value="${customer.propertyAndIncome.typeOfEmployment}"
							class="form-control" id="typeOfEmployment"
							placeholder="ype Of Employment" />
					</div>
				</div>
				<div class="form-group row">
					<label for="retirementAge" class="col-sm-2 col-form-label">
						Retirement Age</label>
					<div class="col-sm-10">
						<spring-form:input path="propertyAndIncome.retirementAge"
							value="${customer.propertyAndIncome.retirementAge}"
							class="form-control" id="retirementAge"
							placeholder="Retirement Age" />
					</div>
				</div>
				<div class="form-group row">
					<label for="orgType" class="col-sm-2 col-form-label">
						Organization Type</label>
					<div class="col-sm-10">
						<spring-form:input path="propertyAndIncome.orgType"
							value="${customer.propertyAndIncome.orgType}"
							class="form-control" id="orgType" placeholder="Organization Type" />
					</div>
				</div>
				<div class="form-group row">
					<label for="employerName" class="col-sm-2 col-form-label">
						Employer Name</label>
					<div class="col-sm-10">
						<spring-form:input path="propertyAndIncome.employerName"
							value="${customer.propertyAndIncome.employerName}"
							class="form-control" id="employerName"
							placeholder="Employer Name" />
					</div>
				</div>
				<div class="form-group row">
					<label for="employerName" class="col-sm-2 col-form-label">
						Income</label>
					<div class="col-sm-10">
						<spring-form:input path="propertyAndIncome.income"
							value="${customer.propertyAndIncome.income}" class="form-control"
							id="employerName" placeholder="Income" />
					</div>
				</div>
			</fieldset>

			<fieldset>
				<legend>Loan Details</legend>
				<div class="form-group row">
					<label for="maxLoanGrant" class="col-sm-2 col-form-label">
						Max Loan Grant</label>
					<div class="col-sm-10">
						<spring-form:input path="loan.maxLoanGrant"
							value="${customer.loan.maxLoanGrant}" class="form-control"
							id="maxLoanGrant" placeholder="Max Loan Grant" />
					</div>
				</div>
				<div class="form-group row">
					<label for="inputEmail3" class="col-sm-2 col-form-label">Interest Rate</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="inputEmail3"
							placeholder="8.5" disabled>
					</div>
				</div>
					<div class="form-group row">
						<label for="tenure" class="col-sm-2 col-form-label">
							Tenure</label>
						<div class="col-sm-10">
							<spring-form:input path="loan.tenure"
								value="${customer.loan.tenure}" class="form-control" id="tenure"
								placeholder="Tenure" />
						</div>
					</div>
					<div class="form-group row">
						<label for="loanAmount" class="col-sm-2 col-form-label">
							Loan Amount</label>
						<div class="col-sm-10">
							<spring-form:input path="loan.loanAmount"
								value="${customer.loan.loanAmount}" class="form-control"
								id="loanAmount" placeholder="Tenure" />
						</div>
					</div>
			</fieldset>
			
			<p class="h6 mb-1">Document Details</p>
    	<table class="table border border-dark table-sm mt-0 table-hover">
        <thead class="thead-dark">
            <tr>
            <th scope="col">Document ID</th>
            <th scope="col">Document Name</th>
            <th scope="col">Document Path</th>
            </tr>
        </thead>
        <tbody>
         <c:forEach items="${docInfo}" var="document">
	    <tr>
	    <td>${document.docId}</td>
	        <td>${document.docName}</td>
	        <td>${document.docPath}</td> 
	    </tr>
	    </c:forEach>  
        </tbody>
    </table>
			
			
			<input class="btn blue-gradient rounded border border-dark " type="submit"
				value="Update">
		</spring-form:form>
		
		<div class="d-flex justify-content-around py-4">
			
			<a class="btn btn-lg btn-light-green rounded border border-dark black-text"
				href="<c:url value='/admin/approve/${customer.appId}'/>"
				role="button" onclick="$('.alert').alert();">Approve
			</a> 
			<a class="btn btn-lg btn-danger rounded border border-dark"
				href="<c:url value='/admin/reject/${customer.appId}'/>"
				role="button" onclick="$('.alert').alert();">Reject
			</a>
			
		</div>
		

	</div>
	
	

<!-- JQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.6/js/mdb.min.js"></script>
</body>
</html>
