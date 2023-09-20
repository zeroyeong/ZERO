package com.zero.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
	@GetMapping("/login")
	public String Login(){
		return "login/login";
	}
	
	@GetMapping("/loginFailed") //�α��� �����϶��� url
	public String loginerror(Model model) {
		model.addAttribute("error", "true"); //error �̸��� true�� �ֱ�
		return "login/login"; //login.jsp ���� ���
	}
}
