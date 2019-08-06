<h1>EMI CALCULATOR</h1>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="spring-form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calculator</title>
<style>
.error {
	color: #ff0000;
	font-style: italic;
	font-weight: bold;
}
</style>
</head>
<body>
	<h1>CALCULATOR</h1>
	<hr>
	<a href="${pageContext.request.contextPath }/home"> Home Page</a>
	<hr>
		<c:url var="myaction" value="/calculateEmi"></c:url>
		<spring-form:form action="${myaction}" method="post"  modelAttribute="calvalues">
			<table>
				<tr>
				<td>Loan Amount Required:</td>
				<td><spring-form:input path="loan" /></td>
				<td><spring-form:errors path="loan" cssClass="error" /></td>
			</tr>
			<tr>
				<td>Tenure For EMI:</td>
				<td><spring-form:input path="tenure" /></td>
				<td><spring-form:errors path="tenure" cssClass="error" /></td>
			</tr>
			<tr>
				<td>ROI:</td>
				<td><input name="roi" placeholder="8.5%"/></td>
			</tr>
			
			<tr>
				<td colspan="2">
						<input type="submit" value="calculateemi" />
				</td>
			</tr>
		EMI:${emi}
	</table>
	</spring-form:form>
</body>
</html>