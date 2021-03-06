package com.hxqh.eam.model.view;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;


/**
 * The persistent class for the V_WIFI_DAILY database table.
 * 
 */
@Entity
@Table(name="V_WIFI_DAILY")
public class VWifiDaily implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	private Integer rn;

	@Column(name="\"COUNT\"")
	private BigDecimal count;

	private String da;

	private String name;

	public VWifiDaily() {
	}

	public Integer getRn() {
		return rn;
	}

	public void setRn(Integer rn) {
		this.rn = rn;
	}

	public BigDecimal getCount() {
		return this.count;
	}

	public void setCount(BigDecimal count) {
		this.count = count;
	}

	public String getDa() {
		return this.da;
	}

	public void setDa(String da) {
		this.da = da;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

}