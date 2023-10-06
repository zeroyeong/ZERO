package com.zero.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zero.domain.Member;
import com.zero.repository.MemberRepository;

@Service
public class MemberServiceImpl implements MemberService { 
	
	@Autowired
	private MemberRepository memberRepository;
	
	/*______ȸ������______*/
	@Override
	public void addMember(Member member) {
		memberRepository.addMember(member);
	}
	
	@Override
	public int checkId(String mem_id) {
		return memberRepository.checkId(mem_id);
	}
	
	/*______�α���______*/
	@Override
	public String login(Member member) {
		return memberRepository.login(member);
	}
	
	/*______����ã��______*/
	//���̵� ã��
	@Override
	public String findMemberId(Member member) {
		return memberRepository.findMemberId(member);
	}
	
	//��й�ȣ ã��
	@Override
	public String findMemberPw(Member member) {
		return memberRepository.findMemberPw(member);
	}
	
	/*______����������______*/
	@Override
	public Member getMemberInfo(String mem_id) {
		return memberRepository.getMemberInfo(mem_id);
	}
	
	@Override
	public void modifyInfo(Member member) {
		memberRepository.updateMember(member);
	}
	
	/*______Ż��______*/
	@Override
	public void withdraw(String mem_id) {
		memberRepository.deleteMember(mem_id);
	}
}
