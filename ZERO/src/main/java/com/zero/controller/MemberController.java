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
	
	
	/*________ 회원가입 ________*/
	@GetMapping("/join_agree")
	public String Join() {
		return "member/join";
	}

	@GetMapping("/join")
	public String JoinInput(@ModelAttribute("NewMember") Member member) {		
		return "member/joinInput";
	}

	@GetMapping("/idCheck")
	public String idCheck(@RequestParam("id") String mem_id, Model model) {
		int result = memberService.checkId(mem_id);
		model.addAttribute("result", result);
		model.addAttribute("mem_id", mem_id);
		return "member/idCheck";
	}
	
	@PostMapping("/member")
	public String addMember(@ModelAttribute("NewMember") Member member) {
		memberService.addMember(member);
		return "member/login";
	}
	
	
	/*________ 로그인 ________*/
	@GetMapping("/login")
	public String toLoginPage(HttpSession session) {
		String mem_id = (String) session.getAttribute("mem_id");
		
		if(mem_id != null) { //로그인이 되어있는 상태라면
			return "redirect:/zero";
		}
		return "member/login"; //로그인이 되어있지 않다면 로그인페이지로
	}
	
	@PostMapping("/login")
	public String login(String mem_id, String mem_pw, HttpSession session) {
		String mem_name = memberService.login(mem_id, mem_pw);
		
		if(mem_name == null) {//로그인 실패
			return "redirect:/login";
		}
		
		session.setAttribute("mem_name", mem_name);
		session.setAttribute("mem_id", mem_id);
		return "redirect:/";
	}

	/*______마이페이지______*/
	@GetMapping("/mypage")
	public String mypage(HttpSession session, Model model) {
		String mem_id = (String) session.getAttribute("mem_id");
		
		if(mem_id != null) {
			Member member = memberService.getMemberInfo(mem_id);
			model.addAttribute("member", member);
			
			return "member/myPage";
		}
		
		return "redirect:/login";
	}
	
	@PostMapping("/mypage")
	public String modifyInfo(HttpSession session, Member member) {
		String mem_id = (String) session.getAttribute("mem_id");
		member.setMem_id(mem_id);
		memberService.modifyInfo(member);
		
		return "redirect:/mypage";
	}
	
	/*________ 로그아웃 ________*/
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}
	
	/*______탈퇴______*/
	@GetMapping("/delete")
	public String withraw(HttpSession session) {
		String mem_id = (String) session.getAttribute("mem_id");
		if(mem_id != null) {
			memberService.withdraw(mem_id);
		}
		session.invalidate();
		return "redirect:/";
	}
	
	/*______계정찾기______*/
	//아이디 찾기
//	@PostMapping("/login/findId")
//	public String findMemberId(String mem_name, String mem_phone) {
//		String mem_id = memberService.findMemberId(mem_name, mem_phone);
		
//		return " 
//	}
	
	@PostMapping("/login/findId")
	public String test() {
		System.out.println("sadf");
		return "member/login";
	}
	/*_______________소셜로그인_______________*/
	
	/*______네이버______*/
	@GetMapping("/navercallback")
	public String navercallback() {
		return "member/navercallback";
	}
}
