package com.zero.service;

import com.zero.domain.Member;

public interface MemberService { 
	/*________ ȸ������ ________*/
	void addMember(Member member);
	int checkId(String mem_id);
	
	/*________ �α��� ________*/
	String login(Member member);
	Member getBySns(String snsId, String emailId, String snsType);
	
	/*______����ã��______*/
	String findMemberId(Member member); //���̵� ã��
	String findMemberPw(Member member); //��й�ȣ ã��
	
	/*______����������______*/
	Member getMemberInfo(String mem_id);
	void modifyInfo(Member member);
	
	/*______Ż��______*/
	void withdraw(String mem_id);
	
	void selectMember(int mem_no);
}
