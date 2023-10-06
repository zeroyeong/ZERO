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
	
	
	/*________ ȸ������ ________*/
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
	
	
	/*________ �α��� ________*/
	@GetMapping("/login")
	public String toLoginPage(HttpSession session) {
		String mem_id = (String) session.getAttribute("mem_id");
		
		if(mem_id != null) { //�α����� �Ǿ��ִ� ���¶��
			return "redirect:/zero";
		}
		return "member/login"; //�α����� �Ǿ����� �ʴٸ� �α�����������
	}
	
	@PostMapping("/login")
	public String login(String mem_id, String mem_pw, HttpSession session) {
		String mem_name = memberService.login(mem_id, mem_pw);
		
		if(mem_name == null) {//�α��� ����
			return "redirect:/login";
		}
		
		session.setAttribute("mem_name", mem_name);
		session.setAttribute("mem_id", mem_id);
		return "redirect:/";
	}
	
	/*______����ã��______*/	
	@PostMapping("/login/findId")
	public String test() {
		System.out.println("sadf");
		return "member/login";
	}
	
	//���̵� ã��
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
	
	//��й�ȣ ã��
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

	/*______����������______*/
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
	
	/*________ �α׾ƿ� ________*/
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}
	
	/*______Ż��______*/
	@GetMapping("/delete")
	public String withraw(HttpSession session) {
		String mem_id = (String) session.getAttribute("mem_id");
		if(mem_id != null) {
			memberService.withdraw(mem_id);
		}
		session.invalidate();
		return "redirect:/";
	}
	
	/*_______________�Ҽȷα���_______________*/
	
	/*______���̹�______*/
	@GetMapping("/navercallback")
	public String navercallback() {
		return "member/navercallback";
	}
}
