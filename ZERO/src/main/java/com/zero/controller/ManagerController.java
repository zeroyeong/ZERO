package com.zero.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.zero.domain.Branch;
import com.zero.domain.CupSchedule;
import com.zero.domain.CupTeam;
import com.zero.service.CupService;
import com.zero.service.ManagerService;

@Controller
public class ManagerController {

	@Autowired
	private ManagerService managerService;

	@Autowired
	private CupService cupService;

	@GetMapping("/manager")
	public String manager(@ModelAttribute("NewSchedule") CupSchedule cup_schedule, Model model) {
		
		List<CupTeam> cup_team_list = cupService.getCupTeamList();
		List<CupSchedule> cup_schedule_list = cupService.getCupScheduleList();
		List<Branch> branch_List = cupService.getBranchList();
		
		model.addAttribute("cup_schedule_list", cup_schedule_list);
		model.addAttribute("cup_schedule", cup_schedule);
		
		model.addAttribute("cupTeamList", cup_team_list);
		model.addAttribute("branch_List", branch_List);
		return "manager/manager";
	}
	
	@PostMapping("/manager/schedule")
	public String setSchedule(@ModelAttribute("NewSchedule") CupSchedule cup_schedule) {
 
		cupService.setCupSchedule(cup_schedule);		
		
		return "redirect:/manager";
	}
	
	@GetMapping("/mgrPlayerList")
	public String mgrPlayerList() {
		return "manager/mgrPlayerList";
	}
}
 