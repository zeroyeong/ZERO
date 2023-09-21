package com.zero.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.zero.domain.Member;

@Controller
public class JoinController {
	@GetMapping("/join_agree")
	public String Join() {
		return "join/join";
	}

	@GetMapping("/join_form")
	public String JoinInput(@ModelAttribute("NewMember") Member member) {
		return "join/joinInput";
	}
	
	@PostMapping("/join_form")
	public String setNewMember(@ModelAttribute("NewMember") Member member) {
		System.out.println("getMem_no" + member.getMem_no());
		System.out.println("getMem_id = " + member.getMem_id());
		System.out.println("getMem_name = " + member.getMem_name());
		System.out.println("getMem_phone = " + member.getMem_phone());
		System.out.println("getMem_pw = " + member.getMem_pw());

		
		return "join/join";//¼öÁ¤
	}
}
