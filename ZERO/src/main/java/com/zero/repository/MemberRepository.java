package com.zero.repository;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zero.domain.Member; 

public interface MemberRepository {
	/*______ȸ������______*/
	void addMember(Member member);
	int checkId(String mem_id);
	
	
	/*______�α���______*/
	Member getMemberLoginInfo(String mem_id); //�α���
	
	/*______����������______*/
	Member getMemberInfo(String mem_id); //����������
	void updateMember(Member member); //ȸ������ ����

	/*______Ż��______*/
	void deleteMember(String mem_id);
	
	/*______����ã��______*/
	Member findMemberId(String mem_name, String mem_phone); //���̵� ã��
}
