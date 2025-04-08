
package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.ui.Model;

import com.grownited.entity.PaymentEntity;
import com.grownited.entity.StateEntity;
import com.grownited.repository.StateRepository;

@Controller
public class Statecontroller {
	
	//input 
	//process 
	@Autowired
	StateRepository repositorystate;
	
	@GetMapping("newstate")       
	public String newstate() {
		return "newstate";
	}
	
	@PostMapping("savestate")
	public String savestate(StateEntity state)
	{
		System.out.println(state.getStateid());
		System.out.println(state.getStateName());
		
	
		repositorystate.save(state);
		return "redirect:liststate";
	}
	@GetMapping("liststate")
	public String liststate(Model model) {
		List<StateEntity> statelist = repositorystate.findAll(); // select *
		model.addAttribute("statelist", statelist);
		return "liststate";
	}
	
	@GetMapping("viewstate")
	public String viewstate(Integer stateid, Model model) {
		// ?
		System.out.println("id ===> " + stateid);
		Optional<StateEntity> op = repositorystate.findById(stateid);
		if (op.isEmpty()) {
			// not found
		} else {
			// data found
			StateEntity state = op.get();
			// send data to jsp ->
			model.addAttribute("state", state);

		}

		return "viewstate";
	}
	
	@GetMapping("deletestate")
	public String deletestate(Integer stateid) {
		repositorystate.deleteById(stateid);//delete from members where memberID = :memberId
		return "redirect:/liststate";
	}
	
	
	@GetMapping("editstate")
	public String editstate(Integer stateid,Model model) {
		
		
		Optional<StateEntity> op = repositorystate.findById(stateid);
		if (op.isEmpty()) {
			return "redirect:/liststate";
		} else {
			model.addAttribute("state",op.get());
			return "editstate";

		}
	}
	//save -> entity -> no id present -> insert 
	//save -> entity -> id present -> not present in db -> insert 
	//save -> entity -> id present -> present in db -> update  

	@PostMapping("updatestate")
	public String updatestate(StateEntity state) {//pcode vhreg type vid 
		
		System.out.println(state.getStateid());//id? db? 

		Optional<StateEntity> op = repositorystate.findById(state.getStateid());
		
		if(op.isPresent())
		{
			StateEntity dbState = op.get(); //pcode vhreg type id userId 
			dbState.setStateName(state.getStateName());//code 
			
			
			//
			repositorystate.save(dbState);
		}
		return "redirect:/liststate";
	}
	
	

}
