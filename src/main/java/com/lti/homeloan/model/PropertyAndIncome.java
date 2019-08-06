package com.lti.homeloan.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;




@SuppressWarnings("serial")
@Entity
@Table(name = "property2")
public class PropertyAndIncome implements Serializable {

	@Id
	@Column(name = "pi_id")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "PI_GEN")
	@SequenceGenerator(name = "PI_GEN", sequenceName = "pi_id_seq")
	private Integer piId;

	@Column(name = "property_loc")
	@NotNull(message = "Property Location is Mandatory")
	@Pattern(regexp = "^(\\w+ ?)*$", message = " Location  should be only characters")
	private String propertyLoc;

	@Column(name = "property_name")
	@NotNull(message = "Property Name is Mandatory")
	@Pattern(regexp = "^(\\w+ ?)*$", message = " Property Name  should be only characters")
	private String propertyName;

	@Column(name = "estimated_amt")
	@NotNull(message = "Estimated Amount is Mandatory!!")
	private Long propertyEstimatedAmount;

	@Column(name = "type_of_emp")
	@NotNull(message = "Type of Employment is Mandatory")
	private String typeOfEmployment;

	@Column(name = "ret_age")
	@NotNull(message = "Retirement age is Mandatory")
	@Min(60) @Max(70)
	private Integer retirementAge;

	@Column(name = "org_type")
	@NotNull(message = "Organization Type is Mandatory")
	@Pattern(regexp = "^[a-zA-Z ]*$", message = "Organization Type  should be only characters")
	private String orgType;

	@Column(name = "employer_name")
	@NotNull(message = "Employer Name is Mandatory!!")
	@Pattern(regexp = "^(\\w+ ?)*$", message = "Employer Name should be only characters")
	private String employerName;

	@Column(name = "income")
	@NotNull(message = "Income is Mandatory")
	private Long income;



	
	@OneToOne(targetEntity = Customer.class)
	private Customer customer;

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public PropertyAndIncome() {

	}

	public PropertyAndIncome(Integer piId, String propertyLoc, String propertyName, Long propertyEstimatedAmount,
			String typeOfEmployment, Integer retirementAge, String orgType, String employerName, Long income) {
		super();
		this.piId = piId;
		this.propertyLoc = propertyLoc;
		this.propertyName = propertyName;
		this.propertyEstimatedAmount = propertyEstimatedAmount;
		this.typeOfEmployment = typeOfEmployment;
		this.retirementAge = retirementAge;
		this.orgType = orgType;
		this.employerName = employerName;
		this.income = income;
	}

	public Integer getPiId() {
		return piId;
	}

	public void setPiId(Integer piId) {
		this.piId = piId;
	}

	public String getPropertyLoc() {
		return propertyLoc;
	}

	public void setPropertyLoc(String propertyLoc) {
		this.propertyLoc = propertyLoc;
	}

	public String getPropertyName() {
		return propertyName;
	}

	public void setPropertyName(String propertyName) {
		this.propertyName = propertyName;
	}

	public Long getPropertyEstimatedAmount() {
		return propertyEstimatedAmount;
	}

	public void setPropertyEstimatedAmount(Long propertyEstimatedAmount) {
		this.propertyEstimatedAmount = propertyEstimatedAmount;
	}

	public String getTypeOfEmployment() {
		return typeOfEmployment;
	}

	public void setTypeOfEmployment(String typeOfEmployment) {
		this.typeOfEmployment = typeOfEmployment;
	}

	public Integer getRetirementAge() {
		return retirementAge;
	}

	public void setRetirementAge(Integer retirementAge) {
		this.retirementAge = retirementAge;
	}

	public String getOrgType() {
		return orgType;
	}

	public void setOrgType(String orgType) {
		this.orgType = orgType;
	}

	public String getEmployerName() {
		return employerName;
	}

	public void setEmployerName(String employerName) {
		this.employerName = employerName;
	}

	public Long getIncome() {
		return income;
	}

	public void setIncome(Long income) {
		this.income = income;
	}

	@Override
	public String toString() {
		return "PropertyAndIncome [piId=" + piId + ", propertyLoc=" + propertyLoc + ", propertyName=" + propertyName
				+ ", propertyEstimatedAmount=" + propertyEstimatedAmount + ", typeOfEmployment=" + typeOfEmployment
				+ ", retirementAge=" + retirementAge + ", orgType=" + orgType + ", employerName=" + employerName
				+ ", income=" + income + "]";
	}

}
