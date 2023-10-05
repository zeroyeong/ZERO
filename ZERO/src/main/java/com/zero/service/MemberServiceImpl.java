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
	public String login(String mem_id, String mem_pw) {
		System.out.println("���� ���̵�= "+mem_id);
		Member member = memberRepository.getMemberLoginInfo(mem_id);
		
		if(member.getMem_pw().equals(mem_pw)) //�Է��� �н������ ����� �н����尡 �����ϸ�
			return member.getMem_name(); //�̸� ��ȯ
		
		return null;
	}
	
	/*______����ã��______*/
	//���̵� ã��
	@Override
	public String findMemberId(String mem_name, String mem_phone) {
		Member member = memberRepository.findMemberId(mem_name, mem_phone);
		
		System.out.println("���̵�ã�� �Է��� �̸�: "+ mem_name +" / ��ȭ��ȣ: "+ mem_phone);
		System.out.println("service: "+member);
		
		if(member.getMem_id() != null)
			return member.getMem_id();
		
		return null;
	}
	
	//��й�ȣ ã��
	@Override
	public String findMemberPw(String mem_name, String mem_id) {
		Member member = memberRepository.findMemberPw(mem_name, mem_id);
		
		if(member.getMem_pw() != null)
			return member.getMem_pw();
		
		return null;
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
