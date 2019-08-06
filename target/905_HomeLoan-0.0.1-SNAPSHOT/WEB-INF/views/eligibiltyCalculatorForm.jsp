<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="spring-form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
</head>
<body>
	<h1>Eligibility Calculator</h1>
	<hr>
	<a href="${pageContext.request.contextPath }/home"> Home Page</a>
	<hr>
	<c:url var="myaction" value="/calculateEligibility"></c:url>
	<spring-form:form action="${myaction}" method="post"
		modelAttribute="eligibiltyCalculator">
		<table>
			<tr>
				<td>Monthly Income: <spring-form:input path="monthlyIncome" />
					<br /> <spring-form:errors path="monthlyIncome" cssClass="error"></spring-form:errors>
				</td>
			</tr>
			<tr>
				<td>ROI: <spring-form:input path="rOI"  placeholder="8.5%"/> <br /> <spring-form:errors
						path="rOI" cssClass="error"></spring-form:errors>
				</td>
			</tr>
			<tr>
				<td>Calculate: <input type="submit" value="Calculate">
				</td>
			</tr>
		</table>
	</spring-form:form>

<h3>Max Loan : ${ result }<br>
Eligibility : ${ eligibility }</h3>	
</body>