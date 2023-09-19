package com.zero.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zero.domain.CupPlayer;
import com.zero.domain.CupTeam;
import com.zero.service.CupService;

@Controller
public class CupController {

	@Autowired
	private CupService cupService;

	@GetMapping("/zCup")
	public String zCupAllList(@ModelAttribute("NewTeam") CupTeam cupTeam, @ModelAttribute("NewPlayer") CupPlayer cupPlayer, Model model) {
		
		List<CupTeam> cupTeamList = cupService.getCupTeamList();
		model.addAttribute("cupTeamList", cupTeamList);
		return "zCup/zCup";
	}
	
	@PostMapping("/zCup/cupTeam")
	public String setCupTeam(@ModelAttribute("NewTeam") CupTeam cupTeam, Model model) {

		cupService.setNewCupTeam(cupTeam);
		
		return "redirect:/zCup";
	}
	
	
//	@GetMapping("/zCup/cupTeam")
//	public String getCupTeam(@ModelAttribute("NewTeam") CupTeam cupTeam) {
//		
//		cupService.setNewCupTeam(cupTeam);
//		
//		return "home";
//	}
	
	@GetMapping("/read")
	public String reqCupTeamList(Model model) {
		
		List<CupTeam> cupTeamList = cupService.getCupTeamList();
		model.addAttribute("cupTeamList", cupTeamList);
		
		return "CupTeamResult";
	}
	
	
	
	@GetMapping("/teamDetail")
	public String teamDetail() {
		
		return "teamDetail";
	}
	
	@GetMapping("/teamSetting")
	public String teamSetting() {
		
		return "teamSetting";
	}
	
	@GetMapping("/scheduleDetail")
	public String scheduleDetail() {
		
		return "scheduleDetail";
	}
}
 