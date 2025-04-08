
package com.grownited.entity;

import jakarta.persistence.Entity;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


@Entity // create table
@Table(name = "city") // table name set
public class CityEntity {
	
	@Id //primary key 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer  cityid;//primary key 
	private String cityName;
	private Integer stateid;
	
	public Integer getCityid() {
		return cityid;
	}
	public void setCityid(Integer cityid) {
		this.cityid = cityid;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public Integer getStateid() {
		return stateid;
	}
	public void setStateid(Integer stateid) {
		this.stateid = stateid;
	}
	
	

}
