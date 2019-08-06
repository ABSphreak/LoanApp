<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring-form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="header.jsp" %>  

<%-- 	<h1>Customer Form</h1>
	<hr>
	<a href="${pageContext.request.contextPath }/home"> Home Page</a>
	<hr> --%>
	<br>
	<div class="container col-md-6">
	<script>document.getElementById('formLink').classList.add('active');</script>
	<c:url var="customerFormAction" value="/checkCustSuccess"></c:url>
	<fieldset>
        <legend>Personal Information</legend>
         
        <spring-form:form action="${customerFormAction}" method="post"
		modelAttribute="customer">
			<div class="form-group">
                <label for="customerEmail">Email <small>(USERNAME)</small></label>
                <spring-form:input path="email" type="email" class="form-control " id="customerEmail" placeholder="Email"/>
                <spring-form:errors path="email">
                	<script>document.getElementById('customerEmail').classList.add('is-invalid');</script>
                    <div class="invalid-feedback">Please provide a valid email.</div>
                </spring-form:errors>
            </div>
            <div class="form-row">
            	<div class="form-group col-md-6">
                    <label for="customerPassword">Password</label>
                    <spring-form:input path="password" type="password" class="form-control" id="customerPassword" placeholder="Password" />
                    <spring-form:errors path="password">
                    	<script >document.getElementById('customerPassword').classList.add('is-invalid');</script>
                    	<div class="invalid-feedback">Invalid password.</div>
                    </spring-form:errors>
                </div>
                <div class="form-group col-md-6">
                    <label for="confirmPwd">Confirm Password</label>
                    <spring-form:input path="confirmPwd" type="password" class="form-control" id="confirmPwd" placeholder="Enter Password Again" onChange="validatePass();"/>
                    <div class="invalid-feedback" id="invalid-pass"></div>
                    <div class="valid-feedback" id="valid-pass"></div>
                    <spring-form:errors path="confirmPwd">
                    	<div class="invalid-feedback">Password does not match!</div>
                    </spring-form:errors>
                </div>
            </div>
            <div class="form-group">
                <label for="firstName">First Name</label>
                <spring-form:input path="firstName" type="text" class="form-control" id="firstName" placeholder="Enter First Name" />
                <spring-form:errors path="firstName">
                	<script >document.getElementById('firstName').classList.add('is-invalid');</script>
                    <div class="invalid-feedback">Please provide a valid first name.</div>
                </spring-form:errors>
            </div>
            <div class="form-group">
                <label for="middleName">Middle Name</label>
                <small>(Optional)</small>
                <spring-form:input path="middleName" type="text" class="form-control" id="middleName" placeholder="Enter Middle Name" />
                <spring-form:errors path="middleName">
                	<script >document.getElementById('middleName').classList.add('is-invalid');</script>
                    <div class="invalid-feedback">Please provide a valid middle name.</div>
                </spring-form:errors>
            </div>
            <div class="form-group">
                <label for="lastName">Last Name</label>
                <spring-form:input path="lastName" type="text" class="form-control" id="lastName" placeholder="Enter Middle Name" />
                <spring-form:errors path="lastName">
                	<script >document.getElementById('lastName').classList.add('is-invalid');</script>
                    <div class="invalid-feedback">Please provide a valid last name.</div>
                </spring-form:errors>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="dob">Date of Birth</label>
                    <spring-form:input path="dob" type="date" class="form-control" id="dob" onfocusout="dateValidator();" />
                    <spring-form:errors path="dob">
                    	<script>document.getElementById('dob').classList.add('is-invalid');</script>
                    	<div class="invalid-feedback">Date is not proper.</div>
                    </spring-form:errors>
                    
                </div>
                <div class="form-group col-md-6">
                    <label for="genderSelect">Gender</label>
                    <spring-form:select path="gender" class="form-control" id="genderSelect">
			            <spring-form:option value="" label="Select Gender" />
						<spring-form:option value="MALE" label="Male" />
						<spring-form:option value="FEMALE" label="Female" />
                    </spring-form:select>
                    <spring-form:errors path="gender">
                    	<script >document.getElementById('lastName').classList.add('is-invalid');</script>
                    	<div class="invalid-feedback">Please select a valid gender.</div>
                    </spring-form:errors>
                </div>
            </div>
            <!-- Solved by Zaeni -->
            <div class="form-group">
                <label for="phoneNo">Phone Number</label>
                <spring-form:input path="phoneNo" type="text" class="form-control" id="phoneNo" placeholder="Enter Phone" />
                <spring-form:errors path="phoneNo">
                	<script >document.getElementById('phoneNo').classList.add('is-invalid');</script>
                    <div class="invalid-feedback">Please provide a valid Phone Number.</div>
                </spring-form:errors>
            </div>
            <div class="form-group">
                <label for="nationality">Nationality</label>
                <spring-form:input path="nationality" type="text" class="form-control" id="nationality" placeholder="Enter Nationality" />
                <spring-form:errors path="nationality">
                	<script >document.getElementById('nationality').classList.add('is-invalid');</script>
                    <div class="invalid-feedback">Please provide a valid country name.</div>
                </spring-form:errors>
            </div>
            <div class="form-group">
                <label for="aadharNo">Aadhar Number</label>
                <spring-form:input path="aadharNo" type="text" class="form-control" id="aadharNo" placeholder="Enter Aadhar Card Number" />
                <spring-form:errors path="aadharNo">
                	<script >document.getElementById('aadharNo').classList.add('is-invalid');</script>
                    <div class="invalid-feedback">Please provide a valid AADHAR CARD Number.</div>
                </spring-form:errors>
            </div>
            <div class="form-group">
                <label for="panNo">PAN Number</label>
                <spring-form:input path="panNo" type="text" class="form-control" id="panNo" placeholder="Enter PAN Card Number" />
                <spring-form:errors path="panNo">
                	<script >document.getElementById('panNo').classList.add('is-invalid');</script>
                    <div class="invalid-feedback">Please provide a valid PAN CARD Number.</div>
                </spring-form:errors>
            </div>
           <button id="customerSubmit" type="submit" class="btn aqua-gradient black-text">
           Next
           </button>
        </spring-form:form>
    </fieldset>
</div>
<!-- ------------------------------------------------------------------------------------------------------------------------------------- -->
<%-- <c:url var="customerFormAction" value="/checkCustSuccess"></c:url>
	<spring-form:form action="${customerFormAction}" method="post"
		modelAttribute="customer">
		Enter First Name:<spring-form:input path="firstName" />
		<spring-form:errors path="firstName" cssClass="error"></spring-form:errors>
		
		Enter Middle Name :<spring-form:input path="middleName" />
		<spring-form:errors path="middleName" cssClass="error"></spring-form:errors>
		
		Enter Last Name :<spring-form:input path="lastName" />
		<spring-form:errors path="lastName" cssClass="error"></spring-form:errors>
	
		Enter Email :
		<spring-form:input path="email" />
		<spring-form:errors path="email" cssClass="error"></spring-form:errors>
		
		Enter Password :
		<spring-form:input path="password" />
		<spring-form:errors path="password" cssClass="error"></spring-form:errors>

		Confirm Password:
		<spring-form:input path="confirmPwd" />
		<spring-form:errors path="confirmPwd" cssClass="error"></spring-form:errors>
	
		Enter PhoneNo:
		<spring-form:input path="phoneNo" />
		<spring-form:errors path="phoneNo" cssClass="error"></spring-form:errors>

		Enter DOB:
		<spring-form:input path="dob" />
		<spring-form:errors path="dob" cssClass="error"></spring-form:errors>
		
		Enter Gender :<spring-form:select path="gender">
			<spring-form:option value="" label="Select Gender" />
			<spring-form:option value="MALE" label="Male" />
			<spring-form:option value="FEMALE" label="Female" />
		</spring-form:select>
		<spring-form:errors path="gender" cssClass="error"></spring-form:errors>
	
		Enter nationality :<spring-form:input path="nationality" />
		<spring-form:errors path="nationality" cssClass="error"></spring-form:errors>
	
		Enter  aadharNo :<spring-form:input path="aadharNo" />
		<spring-form:errors path="aadharNo" cssClass="error"></spring-form:errors>
		
		Enter  panNo :<spring-form:input path="panNo" />
		<spring-form:errors path="panNo" cssClass="error"></spring-form:errors>

		<input type="submit" value="Next" />
	</spring-form:form> --%>

<%@ include file="footer.jsp" %>  