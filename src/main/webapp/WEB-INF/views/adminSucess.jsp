<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="spring-form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring-form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<%@ include file="links.jsp" %>
	
    <script src="https://kit.fontawesome.com/7ff9ef7fe4.js"></script>
    <script type="text/javascript" src="js/main.js"></script>  
    <title>LoanApp | Admin</title>
</head>

<body onload="noBack();" onpageshow="if (event.persisted) noBack();"
	onunload="">
<%@ include file="navigation-logout.jsp" %>


    <!-- CONTAINER FIXES THE WIDTH TO 6 COLUMNS AFTER MEDIUM SCREEN SIZE -->
    <div class="container col-md-6 mt-4">
        <!-- YOUR CODE GOES HERE -->
        <div class="d-flex justify-content-between">
            <div class="btn-group">
                <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Select Application ID
                </button>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="#">Action</a>
                </div>
            </div>
        </div>
        <br>
        <table class="table table-hover">
        <thead>
            <tr>
                <th scope="col">Application ID</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
        	 <c:forEach items="${idList}"  var="appId">
            <tr>
                <th scope="row">${appId}</th>
                <td>
                	<a class="btn btn-primary" href="${pageContext.request.contextPath }/admin/verifycustomer/${appId}" role="button">Verify</a>  
                    
                </td>
            </tr>
            </c:forEach>
        </tbody>
        </table>        
    </div>
    





<%--  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Success Page</title>
</head>
<body bgcolor="lightgreen">
	<h1>${msg}</h1>
	<hr>
	|
	<a href="${pageContext.request.contextPath }/showLogin"> Logout</a>
	<hr>
	Hello , ${loginObj.username }
	<hr>
	<hr>
	<spring-form:form action="" modelAttribute="customer">
		<spring-form:select path="appId">
			<spring-form:options items="${idList}" />
		</spring-form:select>
	</spring-form:form>
 <table border="4">
 	<tr>
 		<th>Application ID</th>
 	</tr>
 	<c:forEach items="${idList}"  var="appId">
 	<tr>
 		<td>${appId}</td>
 		<td><a href="${pageContext.request.contextPath }/admin/verifycustomer/${appId}">Verify</a></td>
 	</tr>
 	</c:forEach>
 	</table> --%>
<!--  </body>
</html>
 -->
<%@ include file="footer.jsp" %>