package com.lti.homeloan.model;


public class EligibiltyCalculator {

		private Double monthlyIncome;
		private Double rOI;
/*		private Boolean eligiblity;
		private Double maxLoan;*/
		public EligibiltyCalculator(){
			
		}
		
		public Double getmonthlyIncome() {
			return monthlyIncome;
		}
		public void setmonthlyIncome(Double monthlyIncome) {
			this.monthlyIncome = monthlyIncome;
		}
		public Double getrOI() {
			return rOI;
		}
		public void setrOI(Double rOI) {
			this.rOI = rOI;
		}/*
		public Boolean getEligiblity() {
			return eligiblity;
		}
		public void setEligiblity(Boolean eligiblity) {
			this.eligiblity = eligiblity;
		}
		public Double getMaxLoan() {
			return maxLoan;
		}
		public void setMaxLoan(Double maxLoan) {
			this.maxLoan = maxLoan;
		}*/

		@Override
		public String toString() {
			return "EligibiltyCalculator [monthlyIncome=" + monthlyIncome + ", rOI=" + rOI + "]";
		}
		
		
}
