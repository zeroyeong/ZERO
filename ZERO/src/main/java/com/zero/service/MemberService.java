package com.zero.service;

import javax.servlet.http.HttpSession;

import com.zero.domain.Member;

public interface MemberService { 
	/*________ ȸ������ ________*/
	void addMember(Member member);
	int checkId(String mem_id);
	
	/*________ �α��� ________*/
	String login(String mem_id, String mem_pw);
	
	/*______����������______*/
	Member getMemberInfo(String mem_id);
	void modifyInfo(Member member);
	
	/*______Ż��______*/
	void withdraw(String mem_id);
	
	/*______����ã��______*/
	String findMemberId(String mem_name, String mem_phone); //���̵� ã��
}
