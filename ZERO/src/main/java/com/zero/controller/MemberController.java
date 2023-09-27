package com.zero.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.zero.domain.Member;
import com.zero.service.MemberService;

@Controller

public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	
	/*________ ȸ������ ________*/
	@GetMapping("/join_agree")
	public String Join() {
		return "join/join";
	}

	@GetMapping("/join")
	public String JoinInput(@ModelAttribute("NewMember") Member member) {		
		return "join/joinInput";
	}

	@GetMapping("/idCheck")
	public String idCheck(@RequestParam("id") String mem_id, Model model) {
		int result = memberService.checkId(mem_id);
		model.addAttribute("result", result);
		model.addAttribute("mem_id", mem_id);
		return "join/idCheck";
	}
	
	@PostMapping("/member")
	public String addMember(@ModelAttribute("NewMember") Member member) {
		memberService.addMember(member);
		return "login/login";
	}
	
	
	/*________ �α��� ________*/
	@GetMapping("/login")
	public String Login(@ModelAttribute("LoginMember") Member member){
		return "login/login";
	}

	@PostMapping("/login_proc")
	public String loginMember(@ModelAttribute("LoginMember") Member member, String mem_id, String mem_pw) {
		Member user = memberService.loginMember(mem_id);
		
		String pwd = user.getMem_pw();
		
		if(pwd.equals(mem_pw)) {
			System.out.println("��й�ȣ ��ġ");
			return "index";
		}else {
			System.out.println("��й�ȣ ����ġ");
			System.out.println("������ ��й�ȣ"+pwd);
			System.out.println("�Է��� ��й�ȣ"+mem_pw);
			return "login/login";
		}		
	}
}
