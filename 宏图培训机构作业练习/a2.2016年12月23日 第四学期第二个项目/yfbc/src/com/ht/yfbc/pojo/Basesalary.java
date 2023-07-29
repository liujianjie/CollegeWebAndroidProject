package com.ht.yfbc.pojo;

import java.io.Serializable;

/**
 * id:主键id<br> 
 * positionid:职位id<br>
 * basesal:基本工资<br>
 * Day 2017-1-3
 * @author 刘宗龙
 *   
 */
public class Basesalary implements Serializable{
	/**
	 * 
	 */ 
	private static final long serialVersionUID = 1L;
	private String id;
	private String positionid;
	private Double basesal;
	public Basesalary() {
	}
	public Basesalary(String id, String positionid, Double basesal) {
		super();
		this.id = id;
		this.positionid = positionid;
		this.basesal = basesal;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPositionid() {
		return positionid;
	}
	public void setPositionid(String positionid) {
		this.positionid = positionid;
	}
	public Double getBasesal() {
		return basesal;
	}
	public void setBasesal(Double basesal) {
		this.basesal = basesal;
	} 
	
	
}
