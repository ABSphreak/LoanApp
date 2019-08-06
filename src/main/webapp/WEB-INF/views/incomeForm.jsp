<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="spring-form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="header.jsp" %>

<div class="container col-md-6">
<!-- PROPERTY INFORMATION FORM -->
<c:url var="incomeFormAction" value="/checkSuccess"></c:url>
<br>
<spring-form:form action="${incomeFormAction}" method="post"
		modelAttribute="propertyAndIncome">
<fieldset>
     <legend>Property Information</legend>
     
     
         <div class="form-group">
             <label for="propertyName">Property Name</label>
             <spring-form:input path="propertyName" type="text" class="form-control" id="propertyName" placeholder="Enter Property Name"/>
             <spring-form:errors path="propertyName">
                	<script >document.getElementById('propertyName').classList.add('is-invalid');</script>
                    <div class="invalid-feedback">Provide a valid input</div>
               </spring-form:errors>
         </div>
         <div class="form-row">
             <div class="form-group col-md-6">
                 <label for="propertyLoc">Property Location</label>
                 <spring-form:input path="propertyLoc" type="text" class="form-control" id="propertyLoc" placeholder="Enter Location Name"/>
                 <spring-form:errors path="propertyLoc">
                	<script >document.getElementById('propertyLoc').classList.add('is-invalid');</script>
                    <div class="invalid-feedback">Please provide a valid location.</div>
                </spring-form:errors>
             </div>
             <div class="form-group col-md-6">
                 <label for="propertyEstimatedAmount">Estimated Cost</label>
                 <spring-form:input path="propertyEstimatedAmount" type="text" class="form-control" id="propertyEstimatedAmount" placeholder="Estimated Cost"/>
                 <spring-form:errors path="propertyEstimatedAmount">
                	<script >document.getElementById('propertyEstimatedAmount').classList.add('is-invalid');</script>
                    <div class="invalid-feedback">Please provide a valid cost.</div>
                </spring-form:errors>
             </div>
         </div>
     
 </fieldset>
 <!-- INCOME INFORMATION FORM -->
 <fieldset>
     <legend>Income Information</legend>
		
		 <div class="form-group">
             <label for="employerName">Employer Name</label>
             <spring-form:input path="employerName" type="text" class="form-control" id="employerName" placeholder="Enter Employer Name"/>
             <spring-form:errors path="employerName">
                	<script >document.getElementById('employerName').classList.add('is-invalid');</script>
                    <div class="invalid-feedback">Please provide a valid employer name.</div>
                </spring-form:errors>
         </div>
         
         <div class="form-row">
             <div class="form-group col-md-6">
                 <label for="typeOfEmployment">Type of Employment</label>
                 <spring-form:select path="typeOfEmployment" class="form-control" id="typeOfEmployment" placeholder="Type Of Employment">
                     	<spring-form:option value="NONE" label="Type Of Employment" />
						<spring-form:options items="${typeOfEmpList}" />
                 </spring-form:select>
                 <spring-form:errors path="typeOfEmployment">
                	<script >document.getElementById('typeOfEmployment').classList.add('is-invalid');</script>
                    <div class="invalid-feedback">Select a valid type.</div>
                </spring-form:errors>
             	
             </div>
             <div class="form-group col-md-6">
                 <label for="retirementAge">Retirement Age</label>
                 <spring-form:input path="retirementAge" type="text" class="form-control" id="retirementAge" placeholder="Retirement Age"/>
                 <spring-form:errors path="retirementAge">
                	<script >document.getElementById('retirementAge').classList.add('is-invalid');</script>
                    <div class="invalid-feedback">Retirement age should be from 60 to 70.</div>
                </spring-form:errors>
             </div>
         </div>
         
         <div class="form-row">
             <div class="form-group col-md-6">
                 <label for="income">Enter Income</label>
                 <small>(Monthly)</small>
                 <spring-form:input path="income" type="text" class="form-control" id="income" placeholder="Income"/>
                 <spring-form:errors path="income">
                	<script >document.getElementById('income').classList.add('is-invalid');</script>
                    <div class="invalid-feedback">Please provide an income.</div>
                </spring-form:errors>
             </div>
             <div class="form-group col-md-6">
                 <label for="orgType">Organization Type</label>
                 <spring-form:select path="orgType" class="form-control" id="orgType" placeholder="Type Of Organization">
                     	<spring-form:option value="NONE" label="Type Of Organization" />
						<spring-form:options items="${typeOfOrgList}" />
                 </spring-form:select>
                 <spring-form:errors path="orgType">
                	<script >document.getElementById('orgType').classList.add('is-invalid');</script>
                    <div class="invalid-feedback">Select a valid type.</div>
                </spring-form:errors>
             </div>
         </div>
 </fieldset>
	<button type="submit" class="btn btn-info">Next
	  <!-- <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
	  <span class="sr-only">Loading...</span> -->
	</button>
</spring-form:form>
</div>



<!-- ----------------------------------------------------------------------------------------------------------------- -->
<%-- <hr>
	<h1>Property and Income Form</h1>
	<hr>
	<a href="${pageContext.request.contextPath}/home"> Home Page</a>
	<hr>
	<c:url var="incomeFormAction" value="/checkSuccess"></c:url>
	<spring-form:form action="${incomeFormAction}" method="post"
		modelAttribute="propertyAndIncome">
		Enter Property Location:<spring-form:input path="propertyLoc" />
		<br />
		<spring-form:errors path="propertyLoc" cssClass="error"></spring-form:errors>
		<br />
	
		Enter  Property Name :<spring-form:input path="propertyName" />
		<br />
		<spring-form:errors path="propertyName" cssClass="error"></spring-form:errors>
		<br />
		
		Enter  Property Estimated Amount :
		<spring-form:input path="propertyEstimatedAmount" />
		<br />
		<spring-form:errors path="propertyEstimatedAmount" cssClass="error"></spring-form:errors>
		<br />
		
		Enter  Type Of Employment :
		<spring-form:select path="typeOfEmployment">
			<spring-form:option value="NONE" label="Select Type Of Employment" />
			<spring-form:options items="${typeOfEmpList}" />
		</spring-form:select>
		<br />
		<spring-form:errors path="typeOfEmployment" cssClass="error"></spring-form:errors>
		<br />
		
		Enter  Retirement Age :<spring-form:input path="retirementAge" />
		<br />
		<spring-form:errors path="retirementAge" cssClass="error"></spring-form:errors>
		<br />
	
		Enter  Organisation Type :<spring-form:select path="orgType">
			<spring-form:option value="NONE" label="Select Organisation Type" />
			<spring-form:options items="${typeOfOrgList}" />
		</spring-form:select>
		<br />
		<spring-form:errors path="orgType" cssClass="error"></spring-form:errors>
		<br />
			
		Enter Employer Name :<spring-form:input path="employerName" />
		<br />
		<spring-form:errors path="employerName" cssClass="error"></spring-form:errors>
		<br />
	
		Enter  Income :<spring-form:input path="income" />
		<br />
		<spring-form:errors path="income" cssClass="error"></spring-form:errors>
		<br />

		<input type="submit" value="Next" />
	</spring-form:form> 
	 --%>
	
<%@ include file="footer.jsp" %>  