
package com.grownited.entity;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "payment")
public class PaymentEntity {
	 
		@Id //primary key 
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private Integer paymentid;
		private Integer userId;
		
		private String expDate;
		 private String ccNum; 
		private String amount;
		private Date paymentDate;
		
		
		
		
		public Integer getPaymentid() {
			return paymentid;
		}
		public void setPaymentid(Integer paymentid) {
			this.paymentid = paymentid;
		}
		
		public String getAmount() {
			return amount;
		}
		public void setAmount(String amount) {
			this.amount = amount;
		}
		
		public String getExpDate() {
			return expDate;
		}
		public void setExpDate(String expDate) {
			this.expDate = expDate;
		}
		public String getCcNum() {
			return ccNum;
		}
		public void setCcNum(String ccNum) {
			this.ccNum = ccNum;
		}
		public Date getPaymentDate() {
			return paymentDate;
		}
		public void setPaymentDate(Date paymentDate) {
			this.paymentDate = paymentDate;
		}
		public Integer getUserId() {
			return userId;
		}
		public void setUserId(Integer userId) {
			this.userId = userId;
		}
}