<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="spring-form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Loan Form</title>
<style>
.error {
	color: #ff0000;
	font-style: italic;
	font-weight: bold;
}
</style>
</head>
<body>
	<h1>Loan Form</h1>
	<hr>
	
	<hr>
	<c:url var="myaction" value="/checkLoanSuccess"></c:url>
	<spring-form:form action="${myaction}" method="post"
		modelAttribute="loan">
		<table>
			<tr>
				<td>Maximum Loan Grant :</td>
				<td><spring-form:input path="maxLoanGrant" /></td>
				<td><spring-form:errors path="maxLoanGrant" cssClass="error" /></td>
			</tr>
			<tr>
				<td>Interest Rate :</td>
				<td><spring-form:input path="interestRate" /></td>
				<td><spring-form:errors path="interestRate" cssClass="error" /></td>
			</tr>
			<tr>
				<td>Tenure :</td>
				<td><spring-form:input path="tenure" /></td>
				<td><spring-form:errors path="tenure" cssClass="error" /></td>
			</tr>
			<tr>
				<td>Loan Amount :</td>
				<td><spring-form:input path="loanAmount" /></td>
				<td><spring-form:errors path="loanAmount" cssClass="error" /></td>
			</tr>
			<tr>
				<td colspan="2">
						<input type="submit" value="Add Details" />
			</tr>
		</table>
	</spring-form:form>
	
</body>
</html>