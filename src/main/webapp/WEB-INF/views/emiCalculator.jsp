<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" errorPage="error.jsp"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="spring-form"%>

<%@ include file="header.jsp" %>
<script>
function validateInput() {
	var tenure = document.getElementById("tenure").value;
	var loanAmt = document.getElementById("loan").value;
	if(tenure == null){
		window.history.back();
		$('<div class="alert alert-warning alert-dismissible fade show" role="alert"><strong>Holy guacamole!</strong> You should check in on some of those fields below.<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>').insertAfter("#customerPassword");
}
}
</script>

<div class="container">
<script>document.getElementById('calcLink').classList.add('active');</script>
<div id="main-container" class="container col-sm-6 my-5 py-5">

	<c:url var="calculateEmi" value="/calculateEmi"></c:url>
    <spring-form:form action="${calculateEmi}" method="post"  modelAttribute="calvalues" class="rounded border border-dark p-3">
    
    <h3 class="d-flex justify-content-center ">EMI Calculator</h3>
    <br>
    
        <div class="form-group row">
            <label for="tenure" class="d-flex flex-row justify-content-sm-end col-sm-6 col-form-label col-form-label-sm">Tenure <small>(Years)</small></label>
            <div class="col-sm-6">
                <spring-form:input path="tenure" type="number" class="form-control form-control-sm" id="tenure" placeholder="Tenure"/>
                <spring-form:errors path="tenure">
                	<script >document.getElementById('tenure').classList.add('is-invalid');</script>
                    <div class="invalid-feedback">Please enter valid months</div>
               	</spring-form:errors>
            </div>
        </div>
        <div class="form-group row">
            <label for="loan" class="d-flex flex-row justify-content-sm-end col-sm-6 col-form-label col-form-label-sm">Loan Amount &#8377;</label>
            <div class="col-sm-6">
                <spring-form:input path="loan" type="text" class="form-control form-control-sm" id="loan" placeholder="Loan Amount" />
                <spring-form:errors path="loan">
                	<script >document.getElementById('loan').classList.add('is-invalid');</script>
                    <div class="invalid-feedback">Email or Password is wrong</div>
               	</spring-form:errors>
            </div>
        </div>
        <div class="form-group row">
            <label for="annualInterestRate" class="d-flex flex-row justify-content-sm-end col-sm-6 col-form-label col-form-label-sm">Annual Interest Rate (%)</label>
            <div class="col-sm-6">
                <input type="text" class="form-control form-control-sm" id="annualInterestRate" value="8.5" readonly>
          	</div>
          	
        </div>
        <div class="form-group row d-flex flex-row justify-content-center">
            <button type="submit" class="btn btn-unique" onclick="validateInput();">Calculate</button>
        </div>
        <div class="form-group row d-flex flex-row justify-content-center">
            <strong>EMI: &#8377;${emi}</strong>
        </div>
        
    </spring-form:form>
</div>

</div>
	<%-- <h1>EMI Calculator</h1>
	<hr>
	<a href="${pageContext.request.contextPath }/home"> Home Page</a>
	<hr>
		<c:url var="myaction" value="/calculateEmi"></c:url>
		<spring-form:form action="${myaction}" method="post"  modelAttribute="calvalues">
			<table>
				<tr>
				<td>Loan Amount Required:</td>
				<td><spring-form:input path="loan" /></td>
				<td><spring-form:errors path="loan" cssClass="error" /></td>
			</tr>
			<tr>
				<td>Tenure For EMI:</td>
				<td><spring-form:input path="tenure" /></td>
				<td><spring-form:errors path="tenure" cssClass="error" /></td>
			</tr>
			<tr>
				<td>ROI:</td>
				<td><input name="roi" placeholder="8.5%"/></td>
			</tr>
			
			<tr>
				<td colspan="2">
						<input type="submit" value="calculateemi" />
				</td>
			</tr>
		EMI:${emi}
	</table>
	</spring-form:form> --%>

<%@ include file="footer.jsp" %>