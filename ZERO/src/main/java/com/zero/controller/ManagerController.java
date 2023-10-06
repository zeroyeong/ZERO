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
						  @ModelAttribute("updateSchedule") CupSchedule cup_schedule2,
						  @ModelAttribute("detail") CupMatchDetail cup_detail,
						  @ModelAttribute("updateTeam") CupTeam cup_team, Model model) {
		
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
	
	@PostMapping("/manager/updateTeam")
	public String updateCupTeam(@ModelAttribute("updateTeam") CupTeam cup_team) {
		System.out.println("ÆÀ¼öÁ¤");
		System.out.println("cup_team_no = " + cup_team.getTeam_no());
		cupService.updateManagerByCupTeam(cup_team);
		return "redirect:/manager";
	}
	
	@GetMapping("/manager/deleteTeam")
	public String deleteCupTeam(@RequestParam("team_no") int team_no) {
		
		cupService.deleteTeam(team_no);
		return "redirect:/manager";
	}
	
	@PostMapping("/manager/schedule")
	public String setSchedule(@ModelAttribute("NewSchedule") CupSchedule cup_schedule) {
 
		cupService.setCupSchedule(cup_schedule);				
		return "redirect:/manager";
	}
	
	@PostMapping("/manager/updateSchedule")
	public String updateSchedule(@ModelAttribute("updateSchedule") CupSchedule cup_schedule) {

		cupService.updateCupSchedule(cup_schedule);				
		return "redirect:/manager";
	}
	
	@PostMapping("/manager/scheduleDetail")
	public String updateSchedule(@ModelAttribute("detail") CupMatchDetail cup_detail) {

		cupService.updateScheduleDetail(cup_detail);			
		return "redirect:/manager";
	}
	
	@GetMapping("/manager/scheduleDelete")
	public String scheduleDelete(@RequestParam("schedule_no") int schedule_no) {
		
		cupService.deleteSchedule(schedule_no);		
		return "redirect:/manager";
	}
	
	@GetMapping("/manager/mgrPlayerList")
	public String mgrPlayerList(@ModelAttribute("playerUpdate") CupPlayer cup_player,
								@RequestParam("team_no") int team_no, Model model) {
		List<CupPlayer> player_list = cupService.getCupTeamByPlayerList(team_no);
		
		model.addAttribute("player_list", player_list);
		model.addAttribute("team_no", team_no);
		return "manager/mgrPlayerList";
	}
	
	@PostMapping("/manager/mgrPlayerList")
	public String updatePlayer(@RequestParam("team_no") int team_no, CupPlayer cup_player) {
		cupService.updateManagerByCupPlayer(cup_player);
		return "redirect:/manager/mgrPlayerList?team_no=" + team_no;
	}
	
	@GetMapping("/manager/playerDelete")
	public String playerDelete(@RequestParam("player_no") int player_no, @RequestParam("team_no") int team_no) {
		cupService.deletePlayer(player_no);
		return "redirect:/manager/mgrPlayerList?team_no=" + team_no;
	}
	
	@PostMapping("/manager/cancel")
	public String cancelReservation(@RequestParam("re_no") int re_no) {
		managerService.cancleReservation(re_no);
		return "redirect:/manager";
	}
}
 