<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring-form"
	uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Login Page</title>
<style type="text/css">
.error {
	color: red;
	font-style: italic;
	font-weight: bold;
}
</style>
</head>
<body bgcolor="lightblue">
	<h1>User Login Page</h1>
	<hr>
	<h3>${msg }</h3>
	<hr>
	<div>
		<%@ taglib prefix="spring-form"
			uri="http://www.springframework.org/tags/form"%>
		<c:url var="myaction" value="/checkLogin"></c:url>
		<spring-form:form action="${myaction}" method="post"
			modelAttribute="loginObj">
	Enter Username:<spring-form:input path="username" />
			<br />
			<!-- login.setUsername -->
			<spring-form:errors path="username" cssClass="error"></spring-form:errors>
	
	Enter Password :<spring-form:input path="password" />
			<br />
			<!-- login.setPassword -->
			<spring-form:errors path="password" cssClass="error"></spring-form:errors>
			
	Role :<spring-form:radiobutton path = "role" value = "admin" label = "Admin" />
				<spring-form:radiobutton path = "role" value = "user" label = "User" />
			<!-- login.setPassword -->
			<spring-form:errors path="password" cssClass="error"></spring-form:errors>

			<input type="submit" value="Login" />
		</spring-form:form>

	</div>
</body>
</html>