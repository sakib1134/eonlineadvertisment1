package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.AdbookingEntity;
import com.grownited.entity.HoardingEntity;
import com.grownited.entity.PaymentEntity;
import com.grownited.entity.StateEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.AdbookingRepository;
import com.grownited.repository.HoardingRepository;
import com.grownited.repository.UserRepository;

import jakarta.servlet.http.HttpSession;



@Controller
public class Adbookingcontroller {
	
	@Autowired
	AdbookingRepository repositoryadbooking;
	
	@Autowired
	UserRepository repouser;
	
	@Autowired
	HoardingRepository repositoryhoarding;
	
	@GetMapping("adbooking")
	public String adbooking(Model model) {
		
		List<HoardingEntity> allhoarding = repositoryhoarding.findAll();// all state
		model.addAttribute("allhoarding",allhoarding);
			return "adbooking";
	}
	
	@PostMapping("saveadvertisment")
	public String saveadvertisment(AdbookingEntity adbookingEntity,HttpSession session)
	{
		UserEntity user = (UserEntity) session.getAttribute("user");
		adbookingEntity.setUserId(user.getUserId());
		
		
		
		repositoryadbooking.save(adbookingEntity);
		return "redirect:listadbooking";
	}
	@GetMapping("mybooking")
	public String mybooking(HttpSession session, Model model) {
	    // Retrieve logged-in user
	    UserEntity user = (UserEntity) session.getAttribute("user");

	    if (user == null) {
	        return "redirect:/login"; // Redirect to login if no user is logged in
	    }

	    Integer userId = user.getUserId();
	    List<AdbookingEntity> adbookingList = repositoryadbooking.findByUserId(userId);

	    if (adbookingList.isEmpty()) {
	        model.addAttribute("message", "No hoardings found for this user.");
	    } else {
	        model.addAttribute("adbookingData", adbookingList);
	    }

	    return "mybooking";
	}
	
	@GetMapping("listadbooking")
	public String listadbooking(Model model) {
		List<Object[]> adbookinglist =repositoryadbooking.getAll();
		model.addAttribute("alladbooking", adbookinglist);
		return "listadbooking";
	}
	
	@GetMapping("viewadbooking")
	public String viewadbooking(Integer ad_id, Model model) {
		List<Object[]> op = repositoryadbooking.getByad_id(ad_id);
		model.addAttribute("adbooking", op);
		return "viewadbooking";
	}
	
	@GetMapping("deleteadbooking")
	public String deleteadbooking(Integer ad_id) {
		repositoryadbooking.deleteById(ad_id);//delete from members where memberID = :memberId
		return "redirect:/listadbooking";
	}
	
	@GetMapping("editadbooking")
	public String editadbooking(Integer ad_id,Model model) {
		List<HoardingEntity> allhoarding = repositoryhoarding.findAll();// all state
		
		model.addAttribute("allhoarding",allhoarding);
		Optional<AdbookingEntity> op = repositoryadbooking.findById(ad_id);
		if (op.isEmpty()) {
			return "redirect:/listadbooking";
		} else {
			model.addAttribute("adbooking",op.get());
			return "editadbooking";

		}
	}
	//save -> entity -> no id present -> insert 
	//save -> entity -> id present -> not present in db -> insert 
	//save -> entity -> id present -> present in db -> update  

	@PostMapping("updateadbooking")
	public String updateadbooking(AdbookingEntity adbooking) {//pcode vhreg type vid 
		
		System.out.println(adbooking.getAd_id());//id? db? 

		Optional<AdbookingEntity> op = repositoryadbooking.findById(adbooking.getAd_id());
		
		if(op.isPresent())
		{
			AdbookingEntity dbAdvertisment = op.get(); //pcode vhreg type id userId 
			dbAdvertisment.setAdcontent(adbooking.getAdcontent());//code 
			dbAdvertisment.setStarttime(adbooking.getStarttime());
			dbAdvertisment.setEndtime(adbooking.getEndtime());
			dbAdvertisment.setPaymentstatus(adbooking.getPaymentstatus());//type 
			dbAdvertisment.setTotalcost(adbooking.getTotalcost());
			dbAdvertisment.setHoardingid(adbooking.getHoardingid());
			//
			repositoryadbooking.save(dbAdvertisment);
		}
		return "redirect:/listadbooking";
	}
	
}