package com.zero.service;

import javax.servlet.http.HttpSession;

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
	public Member loginMember(String mem_id) {
		return memberRepository.loginMember(mem_id);
	}
	
	@Override
	public void logOut(HttpSession session) {
		session.invalidate(); //���� �ʱ�ȭ
	}
}
