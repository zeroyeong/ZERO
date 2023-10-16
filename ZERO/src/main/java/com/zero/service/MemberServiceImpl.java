package com.zero.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zero.domain.Member;
import com.zero.repository.MemberRepository;

@Service
public class MemberServiceImpl implements MemberService { 
	
	@Autowired
	private MemberRepository memberRepository;
	
	/*______회원가입______*/
	@Override
	public void addMember(Member member) {
		memberRepository.addMember(member);
	}
	
	@Override
	public int checkId(String mem_id) {
		return memberRepository.checkId(mem_id);
	}
	
	/*______로그인______*/
	@Override
	public Member login(Member member) {
		return memberRepository.login(member);
	}

	@Override
	public Member getBySns(String emailId, String snsType) {
		return memberRepository.getBySns(emailId, snsType);
	}
	
	/*______계정찾기______*/
	//아이디 찾기
	@Override
	public String findMemberId(Member member) {
		return memberRepository.findMemberId(member);
	}
	
	//비밀번호 찾기
	@Override
	public String findMemberPw(Member member) {
		return memberRepository.findMemberPw(member);
	}
	
	/*______마이페이지______*/
	@Override
	public Member getMemberInfo(String mem_id) {
		return memberRepository.getMemberInfo(mem_id);
	}
	
	@Override
	public void modifyInfo(Member member) {
		memberRepository.updateMember(member);
	}

	@Override
	public void selectMember(int mem_no) {
		memberRepository.selectMember(mem_no);	
	}
	
	/*______탈퇴______*/
	@Override
	public void withdraw(String mem_id) {
		memberRepository.deleteMember(mem_id);
	}
	
	/*사용자관리 멤버 가져오기*/
	@Override
	public List<Member> memberList() {
		return memberRepository.memberList();
	}
}
