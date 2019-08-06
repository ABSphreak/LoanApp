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

@SuppressWarnings("serial")
@Entity
@Table(name = "loan2")
public class Loan implements Serializable {

	@Id
	@Column(name = "loan_id")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "loan_gen")
	@SequenceGenerator(name = "loan_gen", sequenceName = "loan_id_seq")
	private Long loanId;

	@NotNull(message = "Maximum Loan Grant is mandatory.! ")
	@Column(name = "max_loan_grant")
	private Double maxLoanGrant;

	@Column(name = "interest_rate ")
	private Double interestRate = 8.50;

	@NotNull(message = "Tenure is mandatory.! ")
	@Min(3) @Max(72)
	@Column(name = "tenure")
	private Integer tenure;

	@NotNull(message = "Loan Amount is mandatory.! ")
	@Column(name = "loan_amount")
	private Long loanAmount;

	@OneToOne(targetEntity = Customer.class)
	private Customer customer;

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Loan() {

	}

	public Loan(Double maxLoanGrant, Double interestRate, Integer tenure, Long loanAmount) {
		super();
		this.maxLoanGrant = maxLoanGrant;
		this.interestRate = 8.50;
		this.tenure = tenure;
		this.loanAmount = loanAmount;
	}

	@Override
	public String toString() {
		return "Loan [loanId=" + loanId + ", maxLoanGrant=" + maxLoanGrant + ", interestRate=" + interestRate
				+ ", tenure=" + tenure + ", loanAmount=" + loanAmount + "]";
	}

	public Long getLoanId() {
		return loanId;
	}

	public Double getMaxLoanGrant() {
		return maxLoanGrant;
	}

	public void setMaxLoanGrant(Double maxLoanGrant) {
		this.maxLoanGrant = maxLoanGrant;
	}

	public Integer getTenure() {
		return tenure;
	}

	public void setTenure(Integer tenure) {
		this.tenure = tenure;
	}

	public Long getLoanAmount() {
		return loanAmount;
	}

	public void setLoanAmount(Long loanAmount) {
		this.loanAmount = loanAmount;
	}

	public Double getInterestRate() {
		return interestRate;
	}
}
