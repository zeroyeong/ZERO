package com.zero.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.zero.domain.Member;
import com.zero.service.JoinService;

@Controller

public class JoinController {
	
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
		return "redirect:/joinInput";
	}
	
//	@PostMapping("/member")
//	public String submitForm(@ModelAttribute Member member, Model model) {
//		
//		joinService.addMember(member);
//		
//		System.out.println("getMem_id = " + member.getMem_id());
//		System.out.println("getMem_name = " + member.getMem_name());
//		System.out.println("getMem_phone = " + member.getMem_phone());
//		System.out.println("getMem_pw = " + member.getMem_pw());
//
//		model.addAttribute("member", member);
//		
//		return "join/test";//수정
//	}
}
