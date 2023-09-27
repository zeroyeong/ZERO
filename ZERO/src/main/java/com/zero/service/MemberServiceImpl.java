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
	public Member loginMember(String mem_id) {
		return memberRepository.loginMember(mem_id);
	}
	
	@Override
	public void logOut(HttpSession session) {
		session.invalidate(); //세션 초기화
	}
}
