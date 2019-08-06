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
	<h1>Customer Form</h1>
	<hr>
	<a href="${pageContext.request.contextPath }/home"> Home Page</a>
	<hr>
	<c:url var="myaction" value="/checkCustSuccess"></c:url>
	<spring-form:form action="${myaction}" method="post"
		modelAttribute="customer">
		Enter First Name:<spring-form:input path="firstName" />
		<br />
		<spring-form:errors path="firstName" cssClass="error"></spring-form:errors>
		<br />
		
		Enter Last Name :<spring-form:input path="lastName" />
		<br />
		<spring-form:errors path="lastName" cssClass="error"></spring-form:errors>
		<br />
	
		Enter Email :
		<spring-form:input path="email" />
		<br />
		<spring-form:errors path="email" cssClass="error"></spring-form:errors>
		<br />
		
		Enter Password :
		<spring-form:input path="password" />
		<br />
		<spring-form:errors path="password" cssClass="error"></spring-form:errors>
		<br />

		Confirm Password:
		<spring-form:input path="confirmPwd" />
		<br />
		<spring-form:errors path="confirmPwd" cssClass="error"></spring-form:errors>
		<br />
	
		Enter PhoneNo:
		<spring-form:input path="phoneNo" />
		<br />
		<spring-form:errors path="phoneNo" cssClass="error"></spring-form:errors>
		<br />

		Enter DOB:
		<spring-form:input path="dob" />
		<br />
		<spring-form:errors path="dob" cssClass="error"></spring-form:errors>
		<br />
		
		Enter Gender :<spring-form:select path="gender">
			<spring-form:option value="" label="Select Gender" />
			<spring-form:option value="MALE" label="Male" />
			<spring-form:option value="FEMALE" label="Female" />
		</spring-form:select>
		<br />
		<spring-form:errors path="gender" cssClass="error"></spring-form:errors>
		<br />
	
		Enter nationality :<spring-form:input path="nationality" />
		<br />
		<spring-form:errors path="nationality" cssClass="error"></spring-form:errors>
		<br />
	
		Enter  aadharNo :<spring-form:input path="aadharNo" />
		<br />
		<spring-form:errors path="aadharNo" cssClass="error"></spring-form:errors>
		<br />
		
		Enter  panNo :<spring-form:input path="panNo" />
		<br />
		<spring-form:errors path="panNo" cssClass="error"></spring-form:errors>
		<br />

		<input type="submit" value="Next" />
	</spring-form:form>
</body>
</html>