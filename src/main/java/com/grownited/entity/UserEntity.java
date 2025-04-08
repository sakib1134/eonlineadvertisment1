
package com.grownited.entity;


	//import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

	@Entity // create table
	@Table(name = "users") // table name set
	public class UserEntity {

		@Id //primary key 
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private Integer userId;//primary key 
		private String firstName;
		private String lastName;
		private String gender;
		@Column
		private String email;
		private String password;
		private String contactNum;
		private String role;// 
		private String otp; 
		private String profilePicPath;
		private String active;// 
		private String createAt;// 
		
		
		

		
		

		public String getCreateAt() {
			return createAt;
		}

		public void setCreateAt(String createAt) {
			this.createAt = createAt;
		}

		public String getActive() {
			return active;
		}

		public void setActive(String active) {
			this.active = active;
		}

		public Integer getUserId() {
			return userId;
		}

		public void setUserId(Integer userId) {
			this.userId = userId;
		}

		public String getFirstName() {
			return firstName;
		}

		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}

		public String getLastName() {
			return lastName;
		}

		public void setLastName(String lastName) {
			this.lastName = lastName;
		}

		public String getGender() {
			return gender;
		}

		public void setGender(String gender) {
			this.gender = gender;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public String getContactNum() {
			return contactNum;
		}

		public void setContactNum(String contactNum) {
			this.contactNum = contactNum;
		}

		
		public String getRole() {
			return role;
		}

		public void setRole(String role) {
			this.role = role;
		}

		public String getOtp() {
			return otp;
		}

		public void setOtp(String otp) {
			this.otp = otp;
		}

		public String getProfilePicPath() {
			return profilePicPath;
		}

		public void setProfilePicPath(String profilePicPath) {
			this.profilePicPath = profilePicPath;
		}
		

	}
