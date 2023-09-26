package com.zero.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.SystemUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LoginController {
	@GetMapping("/login")
	public String Login(){
		return "login/login";
	}
	
	@GetMapping("/loginfailed") //�α��� �����϶��� url
	public String loginerror(Model model) {
		model.addAttribute("error", "true"); //error �̸��� true�� �ֱ�
		return "login/login"; //login.jsp ���� ���
	}
	
//	@PostMapping("/login/login_proc")
//	public String loginProc(HttpSession session, HttpServletRequest req, HttpServletResponse resp,
//			Model mODEL, @ModelAttribute("userVO") UserVO userVO) {
//		if(SystemUtils.EmptyCheck(userVO.getMem_id()))
//			throw new RuntimeException("���̵� �Է��� �ּ���.");
//		
//		if(SystemUtils.EmptyCheck(userVO.getMem_pw()))
//			throw new RuntimeException("��й�ȣ�� �Է��� �ּ���.");
//		
//		UserVO findUserVO = mainService.findUserVO(userVO.getMem_id());
//	}
}
