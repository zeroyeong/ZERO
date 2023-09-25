package com.zero.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

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
	
	@PostMapping("/member")
	public String addMember(@ModelAttribute("NewMember") Member member) {
		joinService.addMember(member);
		return "login/login";
	}
}
