package com.zero.service;

import javax.servlet.http.HttpSession;

import com.zero.domain.Member;

public interface MemberService { 
	/*________ ȸ������ ________*/
	void addMember(Member member);
	int checkId(String mem_id);
	
	/*________ �α��� ________*/
	public String login(String mem_id, String mem_pw);
	
	/*______����������______*/
	public Member getMemberInfo(String mem_id);
	public void modifyInfo(Member member);
	
	/*______Ż��______*/
	public void withdraw(String mem_id);
}
