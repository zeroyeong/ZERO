package com.zero.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	/*______계정찾기______*/	
	@PostMapping("/login/findId")
	public String test() {
		System.out.println("sadf");
		return "member/login";
	}
	
	//아이디 찾기
	@GetMapping("/findId")
	public String findId() {
			return "member/findId";
	}
	
	@PostMapping("/findId")
	public String findMemberId(
			@RequestParam("mem_name") String mem_name,
			@RequestParam("mem_phone") String mem_phone,
			Member member, Model model) {
		
		System.out.println("Controller > "+mem_name+" / "+mem_phone);		
		
		member.setMem_name(mem_name);
		member.setMem_phone(mem_phone);
		
		String mem_id = memberService.findMemberId(member);
		
		model.addAttribute("mem_id", mem_id);

		System.out.println("controller> "+mem_id);
		return "member/findIdResult";
	}
	
	//비밀번호 찾기
	@GetMapping("/findPw")
	public String findPw() {
			return "member/findPw";
	}
	
	@PostMapping("/findPw")
	public String findMemberPw(
			@RequestParam("mem_name") String mem_name,
			@RequestParam("mem_id") String mem_id,
			@RequestParam("mem_phone") String mem_phone,
			Member member, Model model) {
		
		System.out.println("Controller > "+mem_name+" / "+mem_phone+" / "+mem_id);		
		
		member.setMem_id(mem_id);
		member.setMem_name(mem_name);
		member.setMem_phone(mem_phone);

		String mem_pw = memberService.findMemberPw(member);
		
		model.addAttribute("mem_pw", mem_pw);
		
		System.out.println("controller> "+mem_pw);
		return "member/findPwResult";
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
	
	/*_______________소셜로그인_______________*/
	
	/*______네이버______*/
	@GetMapping("/navercallback")
	public String navercallback() {
		return "member/navercallback";
	}
}
