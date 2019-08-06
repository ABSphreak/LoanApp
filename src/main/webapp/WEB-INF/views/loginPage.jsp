<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring-form"
	uri="http://www.springframework.org/tags/form"%>
	
<%@ include file="header.jsp"%>



<div class="container col-md-6 my-5 py-5">

	
	<p style="color : red"> ${msg} </p>
	<c:url var="checkLogin" value="/checkLogin"></c:url>
	<spring-form:form action="${checkLogin}" method="post"
		modelAttribute="loginObj" class="my-4">
		<fieldset>
		<legend>Login Page</legend>
		<div class="form-group row">
			<label for="username" class="col-sm-2 col-form-label">Email</label>
			<div class="col-sm-10">
				<spring-form:input path="username" type="email" class="form-control"
					id="username" placeholder="Email" />
				<spring-form:errors path="username">
                	<script>document.getElementById('username').classList.add('is-invalid');</script>
                    <div class="invalid-feedback">Email or Password is incorrect.</div>
                </spring-form:errors>
			</div>
		</div>
		<div class="form-group row">
			<label for="password" class="col-sm-2 col-form-label">Password</label>
			<div class="col-sm-10">
				<spring-form:input path="password" type="password"
					class="form-control" id="password" placeholder="Password" />
				<spring-form:errors path="password">
                	<script>document.getElementById('password').classList.add('is-invalid');</script>
                    <div class="invalid-feedback">Email or Password is incorrect.</div>
                </spring-form:errors>
			</div>
		</div>
		<fieldset class="form-group">
			<div class="row">
				<legend class="col-form-label col-sm-2 pt-0">Who are you?</legend>
				<div class="col-sm-10">
					<div class="custom-control custom-radio">
						<spring-form:radiobutton path="role" value="admin"
							id="customRadio1" name="customRadio" class="custom-control-input" />
						<label class="custom-control-label" for="customRadio1">Admin</label>
					</div>
					<div class="custom-control custom-radio">
						<spring-form:radiobutton path="role" value="user"
							id="customRadio2" name="customRadio" class="custom-control-input"/>
						<label class="custom-control-label" for="customRadio2">User</label>
					</div>
				</div>
			</div>
		</fieldset>
		<div class="form-group row">
			<div class="col-sm-10">
				<button type="submit" class="btn btn-primary">Sign in</button>
			</div>
		</div>
		</fieldset>
	</spring-form:form>
	

</div>
	
	
<%@ include file="footer.jsp"%>
	
	
	
<%-- <html>
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
</html> --%>