
package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.AdbookingEntity;
import com.grownited.entity.CityEntity;
import com.grownited.entity.HoardingEntity;
import com.grownited.entity.StateEntity;
import com.grownited.repository.CityRepository;
import com.grownited.repository.StateRepository;
@Controller
public class Citycontroller {
	@Autowired
	CityRepository repositorycity;
	@Autowired
	StateRepository repositorystate;
	
	
	@GetMapping("newcity")
	public String newcity(Model model) {
		List<StateEntity> allState = repositorystate.findAll();// all state
		
		model.addAttribute("allState",allState);

			return "newcity";
	}
	
	@PostMapping("savecity")
	public String savecity(CityEntity cityname)
	{
		
		repositorycity.save(cityname);
		return "redirect:listcity";
	}
	
	
	@GetMapping("listcity")
	public String listcity(Model model) {
		List<Object[]> cityList =repositorycity.getAll();
		model.addAttribute("allcity", cityList);
		return "listcity";
	}
	
	@GetMapping("viewcity")
	public String viewcity(Integer cityid, Model model) {
	   List<Object[]> op = repositorycity.getBycityid(cityid);
		model.addAttribute("city", op);
	    return "viewcity";
	}

	
	@GetMapping("deletecity")
	public String deletecity(Integer cityid) {
		repositorycity.deleteById(cityid);
		return "redirect:/listcity";
	}
	
	@GetMapping("editcity")
	public String editcity(Integer cityid,Model model) {
		
		List<StateEntity> allState = repositorystate.findAll();// all state
		model.addAttribute("allState",allState);
		
		Optional<CityEntity> op = repositorycity.findById(cityid);
		if (op.isEmpty()) {
			return "redirect:/listcity";
		} else {
			model.addAttribute("city",op.get());
			return "editcity";

		}
	}
	//save -> entity -> no id present -> insert 
	//save -> entity -> id present -> not present in db -> insert 
	//save -> entity -> id present -> present in db -> update  

	@PostMapping("updatecity")
	public String updatecity(CityEntity city) {//pcode vhreg type vid 
		
		System.out.println(city.getCityid());//id? db? 

		Optional<CityEntity> op = repositorycity.findById(city.getCityid());
		
		if(op.isPresent())
		{
			CityEntity dbCity = op.get(); //pcode vhreg type id userId 
			dbCity.setCityName(city.getCityName());//code 
			dbCity.setStateid(city.getStateid());
			
			//
			repositorycity.save(dbCity);
		}
		return "redirect:/listcity";
	}

}
