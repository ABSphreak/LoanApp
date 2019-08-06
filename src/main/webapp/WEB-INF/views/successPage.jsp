
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
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<!-- Material Design Bootstrap -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.6/css/mdb.min.css"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/7ff9ef7fe4.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<title>LOAN APPLICATION</title>
<script type="text/javascript">
	window.history.forward();
	function noBack() {
		window.history.forward();
	}
	</script>
</head>
<body onload="noBack();" onpageshow="if (event.persisted) noBack();"
	onunload="">


	<%@ include file="navigation-logout.jsp"%>


	<!-- CONTAINER FIXES THE WIDTH TO 6 COLUMNS AFTER MEDIUM SCREEN SIZE -->
	<div class="container col-md-6 mt-4">
		<div class="before-table d-flex justify-content-between">
			<c:forEach items="${customerList}" var="customer">
				<p class="h4">Welcome, ${customer.firstName }
					${customer.lastName }</p>
			</c:forEach>

			<form action="${pageContext.request.contextPath }/showTrackerPage">
				<button type="submit" class="btn btn-sm btn-success">CHECK
					LOAN STATUS</button>
			</form>
		</div>

		<p class="h6 mb-1">Personal Details</p>
		<table class="table border border-dark table-sm mt-0 table-hover">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Field Name</th>
					<th scope="col">Value</th>
				</tr>
			</thead>
			<tbody>
				<!-- 
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
        
         -->
				<c:forEach items="${customerList}" var="customer">
					<tr>
						<th scope="row">Application ID</th>
						<td>${customer.appId }</td>
					</tr>
					<tr>
						<th scope="row">Email</th>
						<td>${customer.email }</td>
					</tr>
					<tr>
						<th scope="row">First Name</th>
						<td>${customer.firstName }</td>
					</tr>
					<tr>
						<th scope="row">Middle Name</th>
						<td>${customer.middleName }</td>
					</tr>
					<tr>
						<th scope="row">Last Name</th>
						<td>${customer.lastName }</td>
					</tr>
					<tr>
						<th scope="row">Date of birth</th>
						<td>${customer.dob }</td>
					</tr>
					<tr>
						<th scope="row">Gender</th>
						<td>${customer.gender }</td>
					</tr>
					<tr>
						<th scope="row">Phone Number</th>
						<td>${customer.phoneNo }</td>
					</tr>
					<tr>
						<th scope="row">Nationality</th>
						<td>${customer.nationality }</td>
					</tr>
					<tr>
						<th scope="row">Aadhar Number</th>
						<td>${customer.aadharNo}</td>
					</tr>
					<tr>
						<th scope="row">PAN</th>
						<td>${customer.panNo }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>



		<p class="h6 mb-1">Financial Details</p>
		<table class="table border border-dark table-sm mt-0 table-hover">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Field Name</th>
					<th scope="col">Value</th>
				</tr>
			</thead>
			<tbody>
				<!-- 
        	<td>${customer.propertyAndIncome.piId}</td>
			<td>${customer.propertyAndIncome.propertyLoc}</td>
			<td>${customer.propertyAndIncome.propertyName }</td>
			<td>${customer.propertyAndIncome.propertyEstimatedAmount }</td>
			<td>${customer.propertyAndIncome.typeOfEmployment}</td>
			<td>${customer.propertyAndIncome.retirementAge}</td>
			<td>${customer.propertyAndIncome.orgType}</td>
			<td>${customer.propertyAndIncome.employerName}</td>
			<td>${customer.propertyAndIncome.income}</td>
         -->
				<c:forEach items="${customerList}" var="customer">
					<tr>
						<th scope="row">Property Name</th>
						<td>${customer.propertyAndIncome.propertyName }</td>
					</tr>
					<tr>
						<th scope="row">Property Location</th>
						<td>${customer.propertyAndIncome.propertyLoc}</td>
					</tr>
					<tr>
						<th scope="row">Estimated Cost</th>
						<td>${customer.propertyAndIncome.propertyEstimatedAmount }</td>
					</tr>
					<tr>
						<th scope="row">Employer Name</th>
						<td>${customer.propertyAndIncome.employerName}</td>
					</tr>
					<tr>
						<th scope="row">Type of Employment</th>
						<td>${customer.propertyAndIncome.typeOfEmployment}</td>
					</tr>
					<tr>
						<th scope="row">Retirement Age</th>
						<td>${customer.propertyAndIncome.retirementAge}</td>
					</tr>
					<tr>
						<th scope="row">Income</th>
						<td>${customer.propertyAndIncome.income}</td>
					</tr>
					<tr>
						<th scope="row">Organization Type</th>
						<td>${customer.propertyAndIncome.orgType}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>



		<p class="h6 mb-1">Loan Details</p>
		<table class="table border border-dark table-sm mt-0 table-hover">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Field Name</th>
					<th scope="col">Value</th>
				</tr>
			</thead>
			<tbody>
				<!-- 
        	<td>${customer.loan.loanId}</td>
			<td>${customer.loan.maxLoanGrant}</td>
			<td>8.50</td>
			<td>${customer.loan.tenure }</td>
			<td>${customer.loan.loanAmount }</td>
         -->
				<c:forEach items="${customerList}" var="customer">
					<tr>
						<th scope="row">Loan Amount</th>
						<td>${customer.loan.loanAmount }</td>
					</tr>
					<tr>
						<th scope="row">Tenure</th>
						<td>${customer.loan.tenure }</td>
					</tr>
					<tr>
						<th scope="row">Interest Rate</th>
						<td>8.5%</td>
					</tr>
					<tr>
						<th scope="row">Maximum Loan Grant</th>
						<td>${customer.loan.maxLoanGrant}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>









	<%@ include file="footer.jsp"%>
	<!-- ------------------------------------ -->

	<%-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
</html> --%>