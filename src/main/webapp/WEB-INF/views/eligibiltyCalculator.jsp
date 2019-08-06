<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" errorPage="error.jsp"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="spring-form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="header.jsp" %>

<div class="container">
<script>document.getElementById('calcLink').classList.add('active');</script>
<br>
	<c:url var="myaction" value="/calculateEligibility"></c:url>
  <div class="container col-sm-6 my-5 py-5 ">
      <spring-form:form action="${myaction}" method="post"
		modelAttribute="eligibiltyCalculator" class="rounded border border-dark p-3">
          <h3 class="d-flex justify-content-center ">Eligibility Calculator</h3>
          <br>
          <div class="form-group row">
              <label for="rOI" class="d-flex flex-row justify-content-sm-end col-sm-6 col-form-label col-form-label-sm">Annual Interest Rate (%)</label>
              <div class="col-sm-6">
                  <spring-form:input path="rOI" type="text" class="form-control form-control-sm" id="rOI" value="8.5"/>
              </div>
          </div>
          <div class="form-group row">
              <label for="monthlyIncome" class="d-flex flex-row justify-content-sm-end col-sm-6 col-form-label col-form-label-sm">Monthly Salary &#8377;</label>
              <div class="col-sm-6">
                  <spring-form:input path="monthlyIncome" type="text" class="form-control form-control-sm" id="monthlyIncome" placeholder="Monthly Salary"/>
                  <spring-form:errors path="monthlyIncome">
                	<script >document.getElementById('monthlySalary').classList.add('is-invalid');</script>
                    <div class="invalid-feedback">Please enter Salary</div>
               	  </spring-form:errors>
              </div>
          </div>
          
          <div class="form-group row d-flex flex-row justify-content-center">
              <button class=" btn btn-unique">Calculate</button>
          </div>
          <div class="form-group row d-flex flex-row justify-content-center">
              <strong>Max Loan : &#8377;${ result }</strong>
          </div>
          <div class="form-group row d-flex d-inline text-white flex-row justify-content-center">
          	<c:if test = "${eligibility == 'YES'}">
         		<strong class="bg-success px-2 rounded border border-dark">Eligibility : ${eligibility}</strong>
      		</c:if>
      		<c:if test = "${eligibility == 'NO'}">
         		<strong class="bg-danger px-2 rounded border border-dark">Eligibility : ${eligibility}</strong>
      		</c:if>
          </div>
          
          
          
      </spring-form:form>
      
  </div>
	

</div>
<%-- 	<h1>Eligibility Calculator</h1>
	<hr>
	<a href="${pageContext.request.contextPath }/home"> Home Page</a>
	<hr>
	<c:url var="myaction" value="/calculateEligibility"></c:url>
	<spring-form:form action="${myaction}" method="post"
		modelAttribute="eligibiltyCalculator">
		<table>
			<tr>
				<td>Monthly Income: <spring-form:input path="monthlyIncome" />
					<br /> <spring-form:errors path="monthlyIncome" cssClass="error"></spring-form:errors>
				</td>
			</tr>
			<tr>
				<td>ROI: <spring-form:input path="rOI"  placeholder="8.5%"/> <br /> <spring-form:errors
						path="rOI" cssClass="error"></spring-form:errors>
				</td>
			</tr>
			<tr>
				<td>Calculate: <input type="submit" value="Calculate">
				</td>
			</tr>
		</table>
	</spring-form:form>

<h3>Max Loan : ${ result }<br>
Eligibility : ${ eligibility }</h3>	 --%>
<%@ include file="footer.jsp" %>