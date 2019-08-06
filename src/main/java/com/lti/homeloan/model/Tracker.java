package com.lti.homeloan.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tracker2")
public class Tracker {
	@Id
	@Column(name="appid")
	private Integer appId;
	private Integer status;
	
	public Tracker() {
	}
	public Tracker(Integer appId, Integer status) {
		super();
		this.appId = appId;
		this.status = status;
	}
	public Integer getAppId() {
		return appId;
	}
	public void setAppId(Integer appId) {
		this.appId = appId;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Tracker [appId=" + appId + ", status=" + status + "]";
	}
	
}

	
	


	