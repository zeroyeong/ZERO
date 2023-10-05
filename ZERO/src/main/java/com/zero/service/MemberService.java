package com.zero.service;

import javax.servlet.http.HttpSession;

import com.zero.domain.Member;

public interface MemberService { 
	/*________ 회원가입 ________*/
	void addMember(Member member);
	int checkId(String mem_id);
	
	/*________ 로그인 ________*/
	String login(String mem_id, String mem_pw);
	
	/*______마이페이지______*/
	Member getMemberInfo(String mem_id);
	void modifyInfo(Member member);
	
	/*______탈퇴______*/
	void withdraw(String mem_id);
	
	/*______계정찾기______*/
	String findMemberId(String mem_name, String mem_phone); //아이디 찾기
}
