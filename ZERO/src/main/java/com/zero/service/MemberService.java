package com.zero.service;

import java.util.List;

import com.zero.domain.Member;

public interface MemberService { 
	/*________ ȸ������ ________*/
	void addMember(Member member);
	int checkId(String mem_id);
	
	/*________ �α��� ________*/
	Member login(Member member);
	Member getBySns(String emailId, String snsType);
	
	/*______����ã��______*/
	String findMemberId(Member member); //���̵� ã��
	String findMemberPw(Member member); //��й�ȣ ã��
	
	/*______����������______*/
	Member getMemberInfo(String mem_id);
	void modifyInfo(Member member);
	void selectMember(int mem_no);
	
	/*______Ż��______*/
	void withdraw(String mem_id);
	
	/*����ڰ��� ��� ��������*/
	List<Member> memberList();
}
