<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="spring-form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="header.jsp" %>

<c:url var="loanFormAction" value="/checkLoanSuccess"></c:url>
<br>
<div class="container col-md-6">
	<fieldset>
       <legend>Loan Information</legend>
       <spring-form:form action="${loanFormAction}" method="post"
		modelAttribute="loan">
           <div class="form-row">
               <div class="form-group col-md-6">
                   <label for="interestRate">Interest Rate</label>
                   <spring-form:input path="interestRate" type="text" class="form-control" id="interestRate" value="8.5%" disabled="true"/>
                   <spring-form:errors path="interestRate">
                		<script >document.getElementById('interestRate').classList.add('is-invalid');</script>
                	</spring-form:errors>
               </div>
               <div class="form-group col-md-6">
                   <label for="maxLoanGrant">Maximum Loan Allowance</label>
                   <spring-form:input path="maxLoanGrant" type="text" class="form-control" id="maxLoanGrant" value="${maxGrantAmount}"/>
               	   <spring-form:errors path="maxLoanGrant">
                		<script >document.getElementById('maxLoanGrant').classList.add('is-invalid');</script>
                    	<div class="invalid-feedback">Provide valid number of Max Loan Amount.</div>
                	</spring-form:errors>
               </div>
           </div>
           <div class="form-row">
               <div class="form-group col-md-6">
                   <label for="loanAmount">Loan Amount</label>
                  <spring-form:input path="loanAmount" type="text" class="form-control" id="loanAmount" placeholder="Loan Amount"/>
                  <spring-form:errors path="loanAmount">
                		<script >document.getElementById('loanAmount').classList.add('is-invalid');</script>
                    	<div class="invalid-feedback">Provide a valid Loan Amount.</div>
                	</spring-form:errors>
               </div>
               <div class="form-group col-md-6">
                   <label for="tenure">Tenure</label>
                   <small>(in months)</small>
                   <spring-form:input path="tenure" type="number" class="form-control" id="tenure" placeholder="Tenure"/>
                   <spring-form:errors path="tenure">
                		<script >document.getElementById('tenure').classList.add('is-invalid');</script>
                    	<div class="invalid-feedback">Provide valid number of months.</div>
                	</spring-form:errors>
               </div>
           </div>

           <button type="submit" class="btn btn-info">Submit</button> 
       </spring-form:form>
   </fieldset>

</div>


<!-- ----------------------------------------------------------------------------------------------------------------- -->
<%-- 	<h1>Loan Form</h1>
	<hr>
	
	<hr>
	<c:url var="loanFormAction" value="/checkLoanSuccess"></c:url>
	<spring-form:form action="${loanFormAction}" method="post"
		modelAttribute="loan">
		<table>
			<tr>
				<td>Maximum Loan Grant :</td>
				<td><spring-form:input path="maxLoanGrant" /></td>
				<td><spring-form:errors path="maxLoanGrant" cssClass="error" /></td>
			</tr>
			<tr>
				<td>Interest Rate :</td>
				<td><spring-form:input path="interestRate" /></td>
				<td><spring-form:errors path="interestRate" cssClass="error" /></td>
			</tr>
			<tr>
				<td>Tenure :</td>
				<td><spring-form:input path="tenure" /></td>
				<td><spring-form:errors path="tenure" cssClass="error" /></td>
			</tr>
			<tr>
				<td>Loan Amount :</td>
				<td><spring-form:input path="loanAmount" /></td>
				<td><spring-form:errors path="loanAmount" cssClass="error" /></td>
			</tr>
			<tr>
				<td colspan="2">
						<input type="submit" value="Add Details" />
			</tr>
		</table>
	</spring-form:form> 
	 --%>
	<%@ include file="footer.jsp" %>  
