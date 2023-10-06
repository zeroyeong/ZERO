package com.zero.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zero.domain.Branch;
import com.zero.domain.CupMatchDetail;
import com.zero.domain.CupPlayer;
import com.zero.domain.CupSchedule;
import com.zero.domain.CupTeam;
import com.zero.domain.Reservation;
import com.zero.service.BranchService;
import com.zero.service.CupService;
import com.zero.service.ManagerService;

@Controller
public class ManagerController {

	@Autowired
	private ManagerService managerService;

	@Autowired
	private CupService cupService;
	
	@Autowired
	private BranchService branchService;

	@GetMapping("/manager")
	public String manager(@ModelAttribute("NewSchedule") CupSchedule cup_schedule, 
						  @ModelAttribute("detail") CupMatchDetail cup_detail, Model model) {
		
		List<CupTeam> cup_team_list = cupService.getCupTeamList();
		List<CupSchedule> cup_schedule_list = cupService.getCupScheduleList();
		List<Branch> branch_List = cupService.getBranchList();
		
		List<Reservation> rlist = branchService.ReservationList();
		model.addAttribute("ReservationList", rlist);
		
		model.addAttribute("cup_schedule_list", cup_schedule_list);
		
		model.addAttribute("cupTeamList", cup_team_list);
		model.addAttribute("branch_List", branch_List); 
		return "manager/manager"; 
	}
	
	@PostMapping("/manager/schedule")
	public String setSchedule(@ModelAttribute("NewSchedule") CupSchedule cup_schedule) {
 
		cupService.setCupSchedule(cup_schedule);		
		
		return "redirect:/manager";
	}
	
	@PostMapping("/manager/scheduleDetail")
	public String setSchedule(@ModelAttribute("detail") CupMatchDetail cup_detail) {
		System.out.println("sdf");
		System.out.println("sdf =  " + cup_detail);
		System.out.println("cup_detail =  " + cup_detail.getDetail_no());
		System.out.println("cup_detail =  " + cup_detail.getDetail_home_goal());
		System.out.println("cup_detail =  " + cup_detail.getDetail_no());
		System.out.println("cup_detail =  " + cup_detail.getDetail_no());
		cupService.updateScheduleDetail(cup_detail);		
		
		return "redirect:/manager";
	}
	
	@GetMapping("/manager/scheduleDelete")
	public String scheduleDelete(@RequestParam("schedule_no") int schedule_no) {
		
		cupService.scheduleDelete(schedule_no);		
		return "redirect:/manager";
	}
	
	@GetMapping("/manager/mgrPlayerList")
	public String mgrPlayerList(@RequestParam("team_no") int team_no, Model model) {
		List<CupPlayer> player_list = cupService.getCupTeamByPlayerList(team_no);
		
		model.addAttribute("player_list", player_list);
		return "manager/mgrPlayerList";
	}
	
	
	@PostMapping("/manager/cancel")
	public String cancelReservation(@RequestParam("re_no") int re_no) {
		managerService.cancleReservation(re_no);
		return "redirect:/manager";
	}
}
 