package com.zero.service;

import javax.servlet.http.HttpSession;

import com.zero.domain.Member;

public interface MemberService { 
	/*________ 회원가입 ________*/
	void addMember(Member member);
	int checkId(String mem_id);
	
	/*________ 로그인 ________*/
	Member loginMember(String mem_id);
	void logOut(HttpSession session);
}
