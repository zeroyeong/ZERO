package com.zero.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class JoinController {
	@GetMapping("/join_agree")
	public String Join() {
		return "join/join";
	}

	@GetMapping("/join_form")
	public String JoinInput() {
		return "join/joinInput";
	}
}
