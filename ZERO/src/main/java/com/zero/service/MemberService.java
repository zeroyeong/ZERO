package com.zero.service;

import java.util.List;

import com.zero.domain.Member;

public interface MemberService { 
	/*________ 회원가입 ________*/
	void addMember(Member member);
	int checkId(String mem_id);
	
	/*________ 로그인 ________*/
	Member login(Member member);
	Member getBySns(String emailId, String snsType);
	
	/*______계정찾기______*/
	String findMemberId(Member member); //아이디 찾기
	String findMemberPw(Member member); //비밀번호 찾기
	
	/*______마이페이지______*/
	Member getMemberInfo(String mem_id);
	void modifyInfo(Member member);
	void selectMember(int mem_no);
	
	/*______탈퇴______*/
	void withdraw(String mem_id);
	
	/*사용자관리 멤버 가져오기*/
	List<Member> memberList();
}
