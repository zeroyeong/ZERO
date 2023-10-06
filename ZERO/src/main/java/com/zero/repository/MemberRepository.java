package com.zero.repository;

import com.zero.domain.Member; 

public interface MemberRepository {
	/*______회원가입______*/
	void addMember(Member member);
	int checkId(String mem_id);
	
	
	/*______로그인______*/
	Member getMemberLoginInfo(String mem_id); //로그인
	
	/*______계정찾기______*/
	String findMemberId(Member member); //아이디 찾기
	String findMemberPw(Member member); //비밀번호 찾기
	
	/*______마이페이지______*/
	Member getMemberInfo(String mem_id); //마이페이지
	void updateMember(Member member); //회원정보 수정

	/*______탈퇴______*/
	void deleteMember(String mem_id);
}
