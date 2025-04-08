
package com.grownited.entity;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity // create table
@Table(name = "hoarding") 
public class HoardingEntity {

// table name set


	@Id //primary key 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer hoardingid;
	private String location;
	private String size;
	private String availabilitystatus;
	private String priceperhour;
	private String state;
	private String city;
	private String area;
	private String hoardingtype;
	private String bannerurl;
	private String  templateImgPath;
	
	
	
	public String getTemplateImgPath() {
		return templateImgPath;
	}
	public void setTemplateImgPath(String templateImgPath) {
		this.templateImgPath = templateImgPath;
	}
	public Integer getHoardingid() {
		return hoardingid;
	}
	public void setHoardingid(Integer hoardingid) {
		this.hoardingid = hoardingid;
	}
	
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getAvailabilitystatus() {
		return availabilitystatus;
	}
	public void setAvailabilitystatus(String availabilitystatus) {
		this.availabilitystatus = availabilitystatus;
	}
	public String getPriceperhour() {
		return priceperhour;
	}
	public void setPriceperhour(String priceperhour) {
		this.priceperhour = priceperhour;
	}
	
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getHoardingtype() {
		return hoardingtype;
	}
	public void setHoardingtype(String hoardingtype) {
		this.hoardingtype = hoardingtype;
	}
	public String getBannerurl() {
		return bannerurl;
	}
	public void setBannerurl(String bannerurl) {
		this.bannerurl = bannerurl;
	}
	
	
	
}
