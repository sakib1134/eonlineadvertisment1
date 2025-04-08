
package com.grownited.entity;

import jakarta.persistence.Entity;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
@Entity
@Table(name="advertisment")
public class AdbookingEntity {

	@Id //primary key 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer ad_id;//primary key 
	private Integer userId;
	private Integer hoardingid;
	private String adcontent;
	private String paymentstatus;
	private String starttime;
	private String endtime;
	private String totalcost;
	private String bannerurl;
	
	
	public Integer getAd_id() {
		return ad_id;
	}
	public void setAd_id(Integer ad_id) {
		this.ad_id = ad_id;
	}
	public String getAdcontent() {
		return adcontent;
	}
	public void setAdcontent(String adcontent) {
		this.adcontent = adcontent;
	}
	
	
	public String getPaymentstatus() {
		return paymentstatus;
	}
	public void setPaymentstatus(String paymentstatus) {
		this.paymentstatus = paymentstatus;
	}
	public String getStarttime() {
		return starttime;
	}
	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}
	public String getEndtime() {
		return endtime;
	}
	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
	public String getTotalcost() {
		return totalcost;
	}
	public void setTotalcost(String totalcost) {
		this.totalcost = totalcost;
	}
	public String getBannerurl() {
		return bannerurl;
	}
	public void setBannerurl(String bannerurl) {
		this.bannerurl = bannerurl;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Integer getHoardingid() {
		return hoardingid;
	}
	public void setHoardingid(Integer hoardingid) {
		this.hoardingid = hoardingid;
	}
	

	
	
	
}
