package com.zero.repository;

import java.util.List;

import com.zero.domain.Member; 

public interface MemberRepository {
	/*______ȸ������______*/
	void addMember(Member member); //ȸ������
	int checkId(String mem_id); //���̵� �ߺ�Ȯ��
	
	/*______�α���______*/
	String login(Member member); //�α���
	Member getBySns(String snsId, String emailId, String snsType); //�Ҽȷα���
	
	/*______����ã��______*/
	String findMemberId(Member member); //���̵� ã��
	String findMemberPw(Member member); //��й�ȣ ã��
	
	/*______����������______*/
	Member getMemberInfo(String mem_id); //����������
	void updateMember(Member member); //ȸ������ ����
	void selectMember(int mem_no);

	/*______Ż��______*/
	void deleteMember(String mem_id);
	
	/*����ڰ��� ��� ��������*/
	List<Member> memberList();
}
