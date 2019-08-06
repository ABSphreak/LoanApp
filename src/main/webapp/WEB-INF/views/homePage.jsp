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
    <title>LOAN APPLICATION</title>
</head>
<body>
 	
  <!--Navbar -->
<nav class="mb-1 navbar scrolling-navbar fixed-top navbar-expand-lg navbar-dark deep-purple darken-4">
    <div class="container">
        
        <!-- Brand -->
        <a class="navbar-brand" href="${pageContext.request.contextPath}/home">
            <strong style="color : #ffe082"><i class="fas fa-home"></i> LoanApp</strong>
          </a>

          <!-- COLLAPSE -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-333"
          aria-controls="navbarSupportedContent-333" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <!-- LINKS -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent-333">

            <!-- LEFT -->
          <ul class="navbar-nav mr-auto">
            <li id="homeLink" class="nav-item active">
                <a class="nav-link" href="${pageContext.request.contextPath}/home">Home
                </a>
            </li>
            <li id="formLink" class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/showCustomerForm">Application Form
                </a>
            </li>
            <li id="calcLink" class=" nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">Calculator</a>
                <div class="dropdown-menu dropdown-default" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/showcalculatorForm">EMI Calculator</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/showEligibilityCalculator">Eligibility Calculator</a>
                </div>
            </li>
            <li id="aboutLink" class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/about">About Us</a>
            </li>
            <li id="faqLink" class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/faq">FAQs</a>
            </li>
        </ul>
        <!-- RIGHT -->
          
          <ul class="navbar-nav ml-auto nav-flex-icons">
            <li class="nav-item">
                <a href="${pageContext.request.contextPath}/showLogin" class="nav-link border border-light rounded px-3">Login</a>
            </li>
          </ul>
        </div>
    </div>
      </nav>
      <!--/.Navbar -->











<%@ include file="home-mdb.jsp" %>












<%@ include file="footer.jsp" %>

