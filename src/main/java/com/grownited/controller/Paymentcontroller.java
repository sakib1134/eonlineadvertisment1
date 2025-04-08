
package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.AdbookingEntity;
import com.grownited.entity.PaymentEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.AdbookingRepository;
import com.grownited.repository.PaymentRepository;
import com.grownited.service.PaymentService;

import jakarta.servlet.http.HttpSession;

@Controller
public class Paymentcontroller {
	@Autowired
	PaymentRepository repositorypayment;
	@Autowired
	AdbookingRepository repositoryadbooking;
	@Autowired
	PaymentService servicepayment;
	

	@GetMapping("payment")
	public String payment(Model model) {
List<AdbookingEntity> alladbooking = repositoryadbooking.findAll();// all state
		
		model.addAttribute("alladbooking",alladbooking);

		return "payment";
	}
		
		@PostMapping("savepayment")
		public String savepayment(PaymentEntity payment,HttpSession session,String ccNum, String expDate)
		{
			
			
			System.out.println(payment.getPaymentid());
			System.out.println(payment.getAmount());
			//System.out.println(payment.getPaymentmethod());
		//	System.out.println(payment.getPaymentstatus());
			//System.out.println(payment.getTransactionRef());
			
			UserEntity user = (UserEntity) session.getAttribute("user");
			
			 payment.setUserId(user.getUserId());
			 servicepayment.chargeCreditCard("87F4DXf6tSU", "44DnfQUbSS845a6X", 500.0, ccNum,
						expDate, user.getEmail());
				repositorypayment.save(payment);
			repositorypayment.save(payment);
			return "redirect:/listpayment";
		}
		
		@GetMapping("listpayment")
		public String listpayment(Model model) {
			List<Object[]> paymentList =repositorypayment.getAll();
			model.addAttribute("allpayment", paymentList);
			return "listpayment";
			
		}
		
		@GetMapping("viewpayment")
		public String viewpayment(Integer paymentid, Model model) {

			 List<Object[]> op = repositorypayment.getBypaymentid(paymentid);
				model.addAttribute("payment", op);

			return "viewpayment";
		}
		
		@GetMapping("deletepayment")
		public String deletepayment(Integer paymentid) {
			repositorypayment.deleteById(paymentid);//delete from members where memberID = :memberId
			return "redirect:/listpayment";
		}
		
		@GetMapping("editpayment")
		public String editpayment(Integer paymentid,Model model) {
			Optional<PaymentEntity> op = repositorypayment.findById(paymentid);
			if (op.isEmpty()) {
				return "redirect:/listpayment";
			} else {
				model.addAttribute("payment",op.get());
				return "editpayment";

			}
		}
		//save -> entity -> no id present -> insert 
		//save -> entity -> id present -> not present in db -> insert 
		//save -> entity -> id present -> present in db -> update  

		@PostMapping("updatepayment")
		public String updatepayment(PaymentEntity payment) {//pcode vhreg type vid 
			
			System.out.println(payment.getPaymentid());//id? db? 

			Optional<PaymentEntity> op = repositorypayment.findById(payment.getPaymentid());
			
			if(op.isPresent())
			{
				PaymentEntity dbPayment = op.get(); //pcode vhreg type id userId 
			//	dbPayment.setPaymentmethod(payment.getPaymentmethod());//code 
				//dbPayment.setPaymentstatus(payment.getPaymentstatus());//type 
			//	dbPayment.setTransactionRef(payment.getTransactionRef());
				dbPayment.setAmount(payment.getAmount());
				//
				repositorypayment.save(dbPayment);
			}
			return "redirect:/listpayment";
		}
		
		
	
		}

		
		
		
		
