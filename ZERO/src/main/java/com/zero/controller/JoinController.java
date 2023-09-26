package com.zero.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zero.domain.Member;
import com.zero.service.JoinService;

@Controller

public class JoinController {
	
	@Autowired
	private JoinService joinService;
	
	@GetMapping("/join_agree")
	public String Join() {
		return "join/join";
	}

	@GetMapping("/join")
	public String JoinInput(@ModelAttribute("NewMember") Member member) {
		
		System.out.println("join 컨트롤러 처리전");
		
		return "join/joinInput";
		
	}

	@GetMapping("/idCheck")
	public String idCheck(@RequestParam("id") String mem_id, Model model) {
//		mem_id = joinService.checkId(mem_id);
		model.addAttribute("mem_id", mem_id);
		return "join/idCheck";
	}
	
	@PostMapping("/member")
	public String addMember(@ModelAttribute("NewMember") Member member) {
		joinService.addMember(member);
		return "login/login";
	}
}
