package com.zero.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.zero.domain.Branch;
import com.zero.domain.CupPlayer;
import com.zero.domain.CupSchedule;
import com.zero.domain.CupTeam;
import com.zero.service.ManagerService;

@Controller
public class ManagerController {

	@Autowired
	private ManagerService managerService;

	@GetMapping("/manager")
	public String manager() {
		return "manager/manager";
	}
	
	@GetMapping("/mgrPlayerList")
	public String mgrPlayerList() {
		return "manager/mgrPlayerList";
	}
}
 