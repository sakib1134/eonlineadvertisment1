
package com.grownited.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.grownited.entity.AreaEntity;
import com.grownited.entity.CityEntity;
import com.grownited.entity.HoardingEntity;
import com.grownited.entity.StateEntity;
import com.grownited.repository.AreaRepository;
import com.grownited.repository.CityRepository;
import com.grownited.repository.HoardingRepository;
import com.grownited.repository.StateRepository;


@Controller
public class Hoardingcontroller {
	
	@Autowired
	HoardingRepository repositoryhoarding;
	
	@Autowired
	AreaRepository repositoryarea;
	
	@Autowired
	CityRepository repositorycity;
	
	@Autowired
	StateRepository repositorystate;
	
	@Autowired
	Cloudinary cloudinary;
	
	
	@GetMapping("hoarding")
	public String hoarding() {
		
		
			return "hoarding";
	}
	
	@PostMapping("savehoarding")
	public String savehoarding(HoardingEntity hoarding,MultipartFile templateImg)
	{
		
		 if (templateImg == null || templateImg.isEmpty()) {
		        System.out.println("Template Img  is missing!");
		        return "homepage"; // Redirect back to signup page
		    }

		    try {
		        // Upload to Cloudinary
		        Map result = cloudinary.uploader().upload(templateImg.getBytes(), ObjectUtils.emptyMap());
		        hoarding.setTemplateImgPath(result.get("url").toString());
		    } catch (IOException e) {
		        e.printStackTrace();
		        return "homepage"; // Return to signup page on failure
		    }
				
		System.out.println(hoarding.getLocation());
		System.out.println(hoarding.getSize());
		System.out.println(hoarding.getAvailabilitystatus());
		System.out.println(hoarding.getPriceperhour());
		System.out.println(hoarding.getHoardingtype());
		System.out.println(hoarding.getBannerurl());
		System.out.println(hoarding.getState());
		System.out.println(hoarding.getCity());
		System.out.println(hoarding.getArea());
				
		
		repositoryhoarding.save(hoarding);
		return "redirect:listhoarding";
	}
	
	@GetMapping("listhoarding")
	public String listhoarding(Model model) {
		List<HoardingEntity> hoardinglist =repositoryhoarding.findAll();
		model.addAttribute("allhoarding", hoardinglist);
		return "listhoarding";
	}
	
	@GetMapping("viewhoarding")
	public String viewhoarding(Integer hoardingid, Model model) {
		// ?
		System.out.println("id ===> " + hoardingid);
		Optional<HoardingEntity> op = repositoryhoarding.findById(hoardingid);
		if (op.isEmpty()) {
			// not found
		} else {
			// data found
			HoardingEntity hoarding = op.get();
			// send data to jsp ->
			model.addAttribute("hoarding", hoarding);

		}

		return "viewhoarding";
	}
	
	@GetMapping("deletehoarding")
	public String deletehoarding(Integer hoardingid) {
		repositoryhoarding.deleteById(hoardingid);//delete from members where memberID = :memberId
		return "redirect:/listhoarding";
	}

	
	@GetMapping("edithoarding")
	public String editarea(Integer hoardingid,Model model) {
		List<StateEntity> allState = repositorystate.findAll();// all state
				
				model.addAttribute("allState",allState);
				
		List<CityEntity> allCity = repositorycity.findAll();// all city
		
		model.addAttribute("allCity",allCity);
		
		List<AreaEntity> allArea = repositoryarea.findAll();// all state
		
		model.addAttribute("allArea",allArea);
		
		Optional<HoardingEntity> op = repositoryhoarding.findById(hoardingid);
		if (op.isEmpty()) {
			return "redirect:/listhoarding";
		} else {
			model.addAttribute("hoarding",op.get());
			return "edithoarding";

		}
	}
	//save -> entity -> no id present -> insert 
	//save -> entity -> id present -> not present in db -> insert 
	//save -> entity -> id present -> present in db -> update  

	@PostMapping("updatehoarding")
	public String updatehoarding(HoardingEntity hoarding) {//pcode vhreg type vid 
		
		System.out.println(hoarding.getHoardingid());//id? db? 

		Optional<HoardingEntity> op = repositoryhoarding.findById(hoarding.getHoardingid());
		
		if(op.isPresent())
		{
			HoardingEntity dbHoarding = op.get(); //pcode vhreg type id userId 
			 dbHoarding.setHoardingtype(hoarding.getHoardingtype());//code 
			 dbHoarding.setLocation(hoarding.getLocation());//type 
			 dbHoarding.setSize(hoarding.getSize());
			 dbHoarding.setAvailabilitystatus(hoarding.getAvailabilitystatus());
			 dbHoarding.setPriceperhour(hoarding.getPriceperhour());
			 dbHoarding.setState(hoarding.getState());
			 dbHoarding.setCity(hoarding.getCity());
			 dbHoarding.setArea(hoarding.getArea());
			
			//
			repositoryhoarding.save( dbHoarding);
		}
		return "redirect:/listhoarding";
	}
	
	

}
