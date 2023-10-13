package com.zero.repository;

import java.util.List;

import com.zero.domain.Member; 

public interface MemberRepository {
	/*______회원가입______*/
	void addMember(Member member); //회원가입
	int checkId(String mem_id); //아이디 중복확인
	
	/*______로그인______*/
	String login(Member member); //로그인
	Member getBySns(String snsId, String emailId, String snsType); //소셜로그인
	
	/*______계정찾기______*/
	String findMemberId(Member member); //아이디 찾기
	String findMemberPw(Member member); //비밀번호 찾기
	
	/*______마이페이지______*/
	Member getMemberInfo(String mem_id); //마이페이지
	void updateMember(Member member); //회원정보 수정
	void selectMember(int mem_no);

	/*______탈퇴______*/
	void deleteMember(String mem_id);
	
	/*사용자관리 멤버 가져오기*/
	List<Member> memberList();
}
