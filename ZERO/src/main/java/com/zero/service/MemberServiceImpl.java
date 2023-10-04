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
	public String login(String mem_id, String mem_pw) {
		System.out.println("서비스 아이디= "+mem_id);
		Member member = memberRepository.getMemberLoginInfo(mem_id);
		
		if(member.getMem_pw().equals(mem_pw)) //입력한 패스워드와 저장된 패스워드가 동일하면
			return member.getMem_name(); //이름 반환
		
		return null;
	}
	
	/*______마이페이지______*/
	public Member getMemberInfo(String mem_id) {
		return memberRepository.getMemberInfo(mem_id);
	}
	
	public void modifyInfo(Member member) {
		memberRepository.updateMember(member);
	}
	
	/*______탈퇴______*/
	public void withdraw(String mem_id) {
		memberRepository.deleteMember(mem_id);
	}
}
