package com.lti.homeloan.model;

public class EmiCalculator {
private Double loan;
private Double tenure;


public EmiCalculator() {
	// TODO Auto-generated constructor stub
}


public EmiCalculator(Double loan, Double tenure) {
	super();
	this.loan = loan;
	this.tenure = tenure;
}


public Double getLoan() {
	return loan;
}


public void setLoan(Double loan) {
	this.loan = loan;
}


public Double getTenure() {
	return tenure;
}


public void setTenure(Double tenure) {
	this.tenure = tenure;
}


@Override
public String toString() {
	return "EmiCalculator [loan=" + loan + ", tenure=" + tenure + "]";
}


}
