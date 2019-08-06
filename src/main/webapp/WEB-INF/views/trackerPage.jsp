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
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<!-- Material Design Bootstrap -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.6/css/mdb.min.css" rel="stylesheet">
	<script src="https://kit.fontawesome.com/7ff9ef7fe4.js"></script>
    <script type="text/javascript" src="js/main.js"></script>  
    <title>LOAN APPLICATION</title>
</head>
<body>
 

<%@ include file="navigation-logout.jsp"%>

<div class="container col-md-6 mt-5 my-4">
	<div
		class="d-flex flex-column align-items-center border border-secondary rounded">
		<br>
		<c:url var="getStatus" value="/getStatus"></c:url>
		
		

		<spring-form:form action="${getStatus}" method="post"
			modelAttribute="tracker" class="form-inline">
			
			<div class="md-form input-group mb-5">
				<div class="input-group-prepend">
			    	<span class="input-group-text md-addon">Applicant ID</span>
			  	</div>
			  <spring-form:input id="appIDInput" path="appId" type="text" class="form-control" placeholder="Applicant ID" aria-label="Applicant ID"
			    aria-describedby="MaterialButton-addon2"/>
			  <div class="input-group-append">
			    <button type="submit" class="btn btn-md purple-gradient m-0 px-3" type="button" id="MaterialButton-addon2">GET STATUS</button>
			  </div>
			</div>
			
		</spring-form:form>
	</div>



	<br> <br>



	<c:if test="${status == '1'}">
		<br>
		<p class="h5">
			Application Status <small>(SUBMITTED & UP FOR VERIFICATION)</small>
		</p>
		<div class="progress">
			<div
				class="progress-bar progress-bar-striped progress-bar-animated bg-info "
				role="progressbar" aria-valuenow="25" aria-valuemin="0"
				aria-valuemax="100" style="width: 25%"></div>
		</div>
	</c:if>
	<c:if test="${status == '3'}">
		<br>
		<p class="h5">
			Application Status <small>(REJECTED)</small>
		</p>
		<div class="progress">
			<div
				class="progress-bar progress-bar-striped progress-bar-animated bg-danger"
				role="progressbar" aria-valuenow="100" aria-valuemin="0"
				aria-valuemax="100" style="width: 100%"></div>
		</div>
		<br>
	</c:if>
	<c:if test="${status == '2'}">
		<br>
		<p class="h5">
			Application Status <small>(COMPLETED AND VERIFIED)</small>
		</p>
		<div class="progress">
			<div
				class="progress-bar progress-bar-striped progress-bar-animated bg-success"
				role="progressbar" aria-valuenow="100" aria-valuemin="0"
				aria-valuemax="100" style="width: 100%"></div>
		</div>
	</c:if>



	<!-- <p class="h5">Progress-Status-1 <small>(SUBMITTED & UP FOR VERIFICATION)</small></p>
      <div class="progress">
          <div class="progress-bar progress-bar-striped progress-bar-animated bg-info " role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 25%"></div>
      </div>
      <br> -->
	<!--       <br>
      <p class="h5">Progress-Status-2 <small>(REJECTED)</small></p>
      <div class="progress">
          <div class="progress-bar progress-bar-striped progress-bar-animated bg-danger" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%"></div>
      </div>
      <br>
      <br>
      <p class="h5">Progress-Status-2 <small>(COMPLETED AND VERIFIED)</small></p>
      <div class="progress">
          <div class="progress-bar progress-bar-striped progress-bar-animated bg-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%"></div>
      </div>
      <br>
      <br> -->
</div>

<%-- 
<html>
<head>
</head>
<body>--%>
<%-- 	<h1>Loan Tracker</h1>
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
	<h3>Status: ${status}</h3> --%>
<%--
</body>
</html>
 --%>

<%@ include file="footer.jsp"%>
