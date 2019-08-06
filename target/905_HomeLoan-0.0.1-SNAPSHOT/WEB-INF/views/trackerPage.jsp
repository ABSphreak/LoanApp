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
	<h1>Loan Tracker</h1>
	<hr>
	<a href="${pageContext.request.contextPath }/home">Back</a>
	<hr>
	<c:url var="myaction" value="/getStatus"></c:url>
	<spring-form:form action="${myaction}" method="post"
		modelAttribute="tracker">
		<table>
			<tr>
				<td>Application Id: <spring-form:input path="appId" /> <br />
					<spring-form:errors path="appId" cssClass="error"></spring-form:errors>
				</td>
			</tr>
			<tr>
				<td>Track: <input type="submit" value="Track">
				</td>
			</tr>
		</table>
	</spring-form:form>
	<h3>Status: ${status}</h3>
</body>
</html>