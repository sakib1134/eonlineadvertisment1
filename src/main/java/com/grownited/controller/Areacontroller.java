
package com.grownited.controller;

import java.util.List;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


import com.grownited.entity.AreaEntity;
import com.grownited.entity.CityEntity;
import com.grownited.entity.PaymentEntity;
import com.grownited.entity.StateEntity;
import com.grownited.repository.AreaRepository;
import com.grownited.repository.CityRepository;
import com.grownited.repository.StateRepository;

@Controller
public class Areacontroller {
	
	@Autowired
	AreaRepository repositoryarea;
	
	@Autowired
	CityRepository repositorycity;
	
	@Autowired
	StateRepository repositorystate;
	
	@GetMapping("newarea")
	public String newarea(Model model) {
List<StateEntity> allState = repositorystate.findAll();// all state
List<CityEntity> allCity = repositorycity.findAll();// all city
		
		model.addAttribute("allState", allState);
		model.addAttribute("allCity", allCity);
		
		return "newarea";
	}

	@PostMapping("savearea")
	public String savearea(AreaEntity area) {
		
		System.out.println(area.getAreaid());
		System.out.println(area.getAreaName());
		
		
		repositoryarea.save(area);
		return "redirect:listarea";
	}
	
	@GetMapping("listarea")
	public String listarea(Model model) {
		List<Object[]> areaList =repositoryarea.getAll();
		model.addAttribute("allarea", areaList);
		return "listarea";
		
	}
	
	@GetMapping("viewarea")
	public String viewarea(Integer areaid, Model model) {
		
		 List<Object[]> op = repositoryarea.getByareaid(areaid);
			model.addAttribute("area", op);
		    return "viewarea";
		}

		
	@GetMapping("deletearea")
	public String deletecity(Integer areaid) {
		repositoryarea.deleteById(areaid);//delete from members where memberID = :memberId
		return "redirect:/listarea";
	}
	
	@GetMapping("editarea")
	public String editarea(Integer areaid,Model model) {
		
		List<StateEntity> allState = repositorystate.findAll();// all state
		model.addAttribute("allState",allState);
				
		List<CityEntity> allCity = repositorycity.findAll();// all city
		model.addAttribute("allCity",allCity);
		
		Optional<AreaEntity> op = repositoryarea.findById(areaid);
		if (op.isEmpty()) {
			return "redirect:/listarea";
		} else {
			model.addAttribute("area",op.get());
			return "editarea";

		}
	}
	
	
	//save -> entity -> no id present -> insert 
	//save -> entity -> id present -> not present in db -> insert 
	//save -> entity -> id present -> present in db -> update  

	@PostMapping("updatearea")
	public String updatearea(AreaEntity area) {//pcode vhreg type vid 
		
		System.out.println(area.getAreaid());//id? db? 

		Optional<AreaEntity> op = repositoryarea.findById(area.getAreaid());
		
		if(op.isPresent())
		{
			AreaEntity dbArea = op.get(); //pcode vhreg type id userId 
			 dbArea.setAreaName(area.getAreaName());
			dbArea.setAreaid(area.getAreaid());//code 
			dbArea.setCityid(area.getCityid());//type 
			dbArea.setStateid(area.getStateid());
			
			//
			repositoryarea.save(dbArea);
		}
		return "redirect:/listarea";
	}
	
	



}
