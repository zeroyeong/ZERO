package com.zero.service;

import javax.servlet.http.HttpSession;

import com.zero.domain.Member;

public interface MemberService { 
	/*________ 회원가입 ________*/
	void addMember(Member member);
	int checkId(String mem_id);
	
	/*________ 로그인 ________*/
	public String login(String mem_id, String mem_pw);
	
	/*______마이페이지______*/
	public Member getMemberInfo(String mem_id);
	public void modifyInfo(Member member);
	
	/*______탈퇴______*/
	public void withdraw(String mem_id);
}
