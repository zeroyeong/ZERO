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
	
	@GetMapping("/loginFailed") //로그인 실패일때의 url
	public String loginerror(Model model) {
		model.addAttribute("error", "true"); //error 이름에 true값 넣기
		return "login/login"; //login.jsp 파일 출력
	}
}
