<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="spring-form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
.error {
	color: #ff0000;
	font-style: italic;
	font-weight: bold;
}
</style>
<body>
	<h1>Property and Income Form</h1>
	<hr>
	<a href="${pageContext.request.contextPath }/home"> Home Page</a>
	<hr>
	<c:url var="myaction" value="/checkSuccess"></c:url>
	<spring-form:form action="${myaction}" method="post"
		modelAttribute="propertyAndIncome">
		Enter Property Location:<spring-form:input path="propertyLoc" />
		<br />
		<spring-form:errors path="propertyLoc" cssClass="error"></spring-form:errors>
		<br />
	
		Enter  Property Name :<spring-form:input path="propertyName" />
		<br />
		<spring-form:errors path="propertyName" cssClass="error"></spring-form:errors>
		<br />
		
		Enter  Property Estimated Amount :
		<spring-form:input path="propertyEstimatedAmount" />
		<br />
		<spring-form:errors path="propertyEstimatedAmount" cssClass="error"></spring-form:errors>
		<br />
		
		Enter  Type Of Employment :
		<spring-form:select path="typeOfEmployment">
			<spring-form:option value="NONE" label="Select Type Of Employment" />
			<spring-form:options items="${typeOfEmpList}" />
		</spring-form:select>
		<br />
		<spring-form:errors path="typeOfEmployment" cssClass="error"></spring-form:errors>
		<br />
		
		Enter  Retirement Age :<spring-form:input path="retirementAge" />
		<br />
		<spring-form:errors path="retirementAge" cssClass="error"></spring-form:errors>
		<br />
	
		Enter  Organisation Type :<spring-form:select path="orgType">
			<spring-form:option value="NONE" label="Select Organisation Type" />
			<spring-form:options items="${typeOfOrgList}" />
		</spring-form:select>
		<br />
		<spring-form:errors path="orgType" cssClass="error"></spring-form:errors>
		<br />
			
		Enter Employer Name :<spring-form:input path="employerName" />
		<br />
		<spring-form:errors path="employerName" cssClass="error"></spring-form:errors>
		<br />
	
		Enter  Income :<spring-form:input path="income" />
		<br />
		<spring-form:errors path="income" cssClass="error"></spring-form:errors>
		<br />

		<input type="submit" value="Next" />
	</spring-form:form>
</body>
</html>