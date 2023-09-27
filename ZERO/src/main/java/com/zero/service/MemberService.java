package com.zero.service;

import javax.servlet.http.HttpSession;

import com.zero.domain.Member;

public interface MemberService { 
	/*________ ȸ������ ________*/
	void addMember(Member member);
	int checkId(String mem_id);
	
	/*________ �α��� ________*/
	Member loginMember(String mem_id);
	void logOut(HttpSession session);
}
