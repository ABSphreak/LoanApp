<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>multipart/form-data</title>
</head>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring-form"
	uri="http://www.springframework.org/tags/form"%>
	

<h1>${msg}</h1>
<hr>
<h3>${today }</h3>
<spring-form:form method="POST"
	action="${pageContext.request.contextPath }/uploadMultipleDocument" enctype="multipart/form-data">
	PAN card: <input type="file" name="files" multiple="multiple"/><br><br>
	Voter Id: <input type="file" name="files" multiple="multiple"/><br><br>
	Salary Slip: <input type="file" name="files" multiple="multiple"/><br><br>
	LOA: <input type="file" name="files" multiple="multiple"/><br><br>
	NOC from Builder: <input type="file" name="files" multiple="multiple"/><br><br>
	Agreement To Sale: <input type="file" name="files" multiple="multiple"/><br><br>
	<br>
	<input type="submit" value="Submit" />

</spring-form:form>

<body>

</body>
</html>