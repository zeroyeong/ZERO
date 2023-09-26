package com.zero.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zero.domain.Branch;
import com.zero.domain.CupPlayer;
import com.zero.domain.CupSchedule;
import com.zero.domain.CupTeam;
import com.zero.service.CupService;

@Controller
public class CupController {

	@Autowired
	private CupService cupService;

	@GetMapping("/zCup")
	public String zCupAllList(@ModelAttribute("NewTeam") CupTeam cup_team, 
							  @ModelAttribute("NewPlayer") CupPlayer cup_player,
							  @ModelAttribute CupSchedule cup_schedule,
							  Model model) {
		
		List<CupTeam> cup_team_list = cupService.getCupTeamList();
		List<CupPlayer> player_rank_list = cupService.getPlayerRanking();
		List<CupSchedule> cup_schedule_list = cupService.getCupScheduleList();
		List<Branch> branch_List = cupService.getBranchList();
			
		model.addAttribute("cupTeamList", cup_team_list);
		model.addAttribute("player_rank_list", player_rank_list);
		model.addAttribute("cupScheduleList", cup_schedule_list);
		model.addAttribute("branch_List", branch_List);
		return "zCup/zCup";
	}
	
	@PostMapping("/zCup/cupTeam")
	public String setCupTeam(@ModelAttribute("NewTeam") CupTeam cup_team, Model model) {
 
		cupService.setNewCupTeam(cup_team);
		
		return "redirect:/zCup";
	}
	
	@PostMapping("/zCup/cupPlayer")
	public String setCupPlayer(@ModelAttribute("NewPlayer") CupPlayer cup_player, Model model) {
		
		cupService.setNewCupPlayer(cup_player);
		
		return "redirect:/zCup";
	}
	
	@GetMapping("/zCup/scheduleDetail")
	public String getScheduleDetail(Model model) {
		
		List<CupTeam> cup_team_list = cupService.getCupTeamList();
		List<CupSchedule> cup_schedule_list = cupService.getCupScheduleList();
		
		model.addAttribute("cupTeamList", cup_team_list);
		model.addAttribute("cupScheduleList", cup_schedule_list);
		return "zCup/scheduleDetail";
	}
	
    @GetMapping("/zCup/teamDetail") 
    public String getTeamDetail(@RequestParam("team_no") int team_no, Model model) {  
    	
    	List<CupPlayer> team_detail_list = cupService.getTeamDetail(team_no);
    	List<CupSchedule> cup_schedule_list = cupService.getTeamSchedule(team_no);
    	
    	model.addAttribute("team_detail_list", team_detail_list);
    	model.addAttribute("cup_schedule_list", cup_schedule_list);
        return "zCup/teamDetail";
    }
	
	@GetMapping("/zCup/teamSetting")
	public String teamSetting(@RequestParam("team_no") int team_no, Model model) {
		
		CupTeam team = cupService.getCupTeamOne(team_no);
		model.addAttribute("team",team);		
		return "zCup/teamSetting";
	}
    
	
	@GetMapping("/zCup/editorTeam")
	public String editorTeam(@RequestParam("team_no") int team_no, Model model) {
		
		List<CupPlayer> team_detail_list = cupService.getTeamDetail(team_no);
		model.addAttribute("team_detail_list", team_detail_list);
		return "zCup/editorTeam";
	}
    
}
 